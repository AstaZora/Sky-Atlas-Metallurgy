-- Global table for occupied chunks
global.occupied_chunks = {}

script.on_init(function()
    global.occupied_chunks = {}
end)

script.on_load(function()
    if not global.occupied_chunks then
        global.occupied_chunks = {}
    end
end)

-- Function to mark a chunk as occupied
function mark_chunk_occupied(x, y)
    local chunk_x = math.floor(x / 32)
    local chunk_y = math.floor(y / 32)
    global.occupied_chunks[chunk_x .. "," .. chunk_y] = true
end

-- Function to check if a chunk is occupied
function is_chunk_occupied(x, y)
    local chunk_x = math.floor(x / 32)
    local chunk_y = math.floor(y / 32)
    return global.occupied_chunks[chunk_x .. "," .. chunk_y] == true
end

-- Core layer noise function
function core_noise(x, y, center_x, center_y)
    -- Here you can define a specific noise function for the core layer
    local noise = math.random() -- This is just a placeholder for a real noise function
    return noise
end

-- Valuable layer noise function
function valuable_noise(x, y, center_x, center_y)
    -- Specific noise function for the valuable layer
    local noise = math.abs(math.sin((x + y) * 0.1)) -- As an example
    return noise
end

-- Raw layer noise function
function raw_noise(x, y, center_x, center_y)
    -- Specific noise function for the raw layer
    local noise = (math.sin(x * 0.1) + math.cos(y * 0.1)) * 0.5 -- As an example
    return noise
end

-- Deposit layer noise function
function deposit_noise(x, y, center_x, center_y)
    -- Specific noise function for the deposit layer
    local noise = math.random() -- This is just a placeholder for a real noise function
    return noise
end
-- Define the noise variation functions for spiral galaxy noise
local function spiral_variation(radius)
    -- Define the variation based on the radius
    return 0.1 * math.sin(0.1 * radius)
end

local function arm_width_variation(radius)
    -- Define the arm width variation
    return 0.1 + radius * 0.05
end

-- Spiral galaxy noise function for debris layer
function spiral_galaxy_noise(x, y, center_x, center_y, arms, base_value)
    local dx, dy = x - center_x, y - center_y
    local radius, angle = math.sqrt(dx^2 + dy^2), math.atan(dy, dx)
    local spiral_factor = 0.5 + spiral_variation(radius)
    local arm_separation, arm_offset = (2 * math.pi) / arms, (angle + radius * spiral_factor) % ((2 * math.pi) / arms)
    arm_offset = math.abs(arm_offset - arm_separation / 2)
    local in_arm = arm_offset < ((arm_separation / 4) + arm_width_variation(radius))
    return in_arm and base_value / (1 + radius * 0.5) or 0
end
function calculate_distance_from_spawn(x, y)
    local spawn_x, spawn_y = 0, 0  -- Assuming the spawn is at coordinates (0,0)
    return math.sqrt((x - spawn_x)^2 + (y - spawn_y)^2)
end

-- Function to place resources in a cluster with overlapping layers
function place_resource_cluster(center_x, center_y, surface)
    if is_chunk_occupied(center_x, center_y) then
        return  -- Chunk is occupied, don't place a new cluster
    end

    local num_arms = 4  -- Number of spiral arms
    local debris_radius = 25
    local deposit_radius = 20
    local raw_radius = 15
    local valuable_radius = 10
    local core_radius = 5
    local min_amount = 30
    local spawn_distance = calculate_distance_from_spawn(center_x, center_y)
    local base_value = min_amount * math.log(1 + spawn_distance / 100)

    for x_offset = -debris_radius, debris_radius do
        for y_offset = -debris_radius, debris_radius do
            local x = center_x + x_offset
            local y = center_y + y_offset
            local distance_from_center = math.sqrt(x_offset^2 + y_offset^2)

            -- Core
            if distance_from_center <= core_radius then
                local amount = base_value * core_noise(x, y, center_x, center_y)
                amount = math.max(amount, min_amount)
                surface.create_entity{name = "magnetite-core", position = {x, y}, amount = amount}
            end

            -- Valuable
            if distance_from_center <= valuable_radius then
                local amount = base_value * valuable_noise(x, y, center_x, center_y)
                amount = math.max(amount, min_amount)
                surface.create_entity{name = "magnetite-valuable", position = {x, y}, amount = amount}
            end

            -- Raw
            if distance_from_center <= raw_radius then
                local amount = base_value * raw_noise(x, y, center_x, center_y)
                amount = math.max(amount, min_amount)
                surface.create_entity{name = "magnetite-raw", position = {x, y}, amount = amount}
            end

            -- Deposit
            if distance_from_center <= deposit_radius then
                local amount = base_value * deposit_noise(x, y, center_x, center_y)
                amount = math.max(amount, min_amount)
                surface.create_entity{name = "magnetite-deposit", position = {x, y}, amount = amount}
            end

            --Debris
            if distance_from_center <= debris_radius then
                local noise_value = spiral_galaxy_noise(x, y, center_x, center_y, num_arms, base_value) -- Replace with your noise function
                local amount = math.max(noise_value, 1) -- Ensures amount is always greater than 0
                surface.create_entity{name = "magnetite-debris", position = {x, y}, amount = amount}
            end
        end
    end
    mark_chunk_occupied(center_x, center_y)
end

-- Event handler for chunk generation
script.on_event(defines.events.on_chunk_generated, function(event)
    local chunk_area = event.area
    local center_x = math.floor((chunk_area.left_top.x + chunk_area.right_bottom.x) / 2)
    local center_y = math.floor((chunk_area.left_top.y + chunk_area.right_bottom.y) / 2)
    if math.random() < 0.001 then  -- Adjust this value for spawn frequency
        place_resource_cluster(center_x, center_y, event.surface)
    end
end)

--Aquatic Mining Section

script.on_event(defines.events.on_built_entity, function(event)
    local entity = event.created_entity
    if entity.name == "aquatic-miner" then
        local position = entity.position
        local area = {{position.x - 1, position.y - 1}, {position.x + 1, position.y + 1}}
        local miners = entity.surface.find_entities_filtered{area = area, name = "aquatic-miner"}

        if #miners > 1 then  -- More than one miner in the area
            -- Destroy the newly placed miner
            entity.destroy()

            -- Optionally, return the item to the player
            if event.player_index then
                local player = game.players[event.player_index]
                player.insert({name = "aquatic-miner", count = 1})
            end

            -- Optionally, display a warning message to the player
            if event.player_index then
                local player = game.players[event.player_index]
                player.print("Cannot place Aquatic Miner here: too close to another miner.")
            end
        end
    end
end)

--Cluster Visualization Button BROKEN
--[[script.on_event(defines.events.on_gui_click, function(event)
    if event.element.name == "show_clusters_button" then
        log("Cluster button clicked")  -- Debug log

        if event.player_index and game.players[event.player_index] then
            local player = game.players[event.player_index]
            if player.gui.center["clusters_flow"] then
                player.gui.center["clusters_flow"].destroy() -- Destroy existing flow
            end

            if global.placed_clusters then
                local flow = player.gui.center.add{type="flow", name="clusters_flow", direction="vertical"}
                for index, cluster in pairs(global.placed_clusters) do
                    flow.add{type="label", caption="Cluster " .. index .. ": (" .. cluster.x .. ", " .. cluster.y .. ")"}
                end
            else
                player.print("No clusters have been placed yet.")  -- Inform the player
            end
        else
            log("No valid player found for GUI click event.")
        end
    end
end)


-- Add the button to the player's GUI when they join the game
script.on_event(defines.events.on_player_joined_game, function(event)
    local player = game.players[event.player_index]
    if not player.gui.top["show_clusters_button"] then
        player.gui.top.add{type="button", name="show_clusters_button", caption="Show Clusters"}
    end
end)]]