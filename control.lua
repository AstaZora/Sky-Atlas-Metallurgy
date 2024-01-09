function spiral_galaxy_noise(x, y, center_x, center_y, arms, base_value)
    local dx = x - center_x
    local dy = y - center_y
    local radius = math.sqrt(dx * dx + dy * dy)
    local angle = math.atan(dy, dx)

    local spiral_factor = 0.5
    local arm_separation = (3 * math.pi) / arms
    local arm_offset = (angle + radius * spiral_factor) % arm_separation
    arm_offset = math.abs(arm_offset - arm_separation / 2)

    local in_arm = arm_offset < (arm_separation / 4)
    local density_factor = in_arm and base_value / (1 + radius * 0.5) or 0

    return density_factor
end

function calculate_distance_from_spawn(x, y)
    return math.sqrt(x*x + y*y)
end

function calculate_amount(distance, min_amount, base_value, layer_type)
    local amount
    if distance == 0 then
        distance = 0.1
    end

    if layer_type == "core" then
        -- Higher density core closest to the center
        amount = base_value / distance
    elseif layer_type == "normal" then
        -- Main resource goes here
        amount = base_value * 1
    elseif layer_type == "debris" then
        -- Debris settings
        amount = base_value / (distance * 1.2)
    end

    return math.max(min_amount, amount)
end



-- Function to place resources in a cluster with a core, normal layer, and debris layer
    function place_resource_cluster(center_x, center_y, surface)
        local core_radius = 5
        local deposit_radius = 10
        local raw_radius = 15
        local valuable_radius = 20
        local debris_radius = 25
        local min_amount = 500
        local base_value = 100
        local num_arms = 4  -- Number of spiral arms
        local spawn_distance = calculate_distance_from_spawn(center_x, center_y)
    
        -- Adjust base_value based on distance from spawn
        local distance_factor = 1 + spawn_distance * 0.1  -- This factor increases with distance from spawn
    
        for x = center_x - debris_radius, center_x + debris_radius do
            for y = center_y - debris_radius, center_y + debris_radius do
                local distance = math.sqrt((x - center_x)^2 + (y - center_y)^2)
    
                if distance <= core_radius then
                    local amount_core = calculate_amount(distance, min_amount, base_value * distance_factor, "core")
                    surface.create_entity{name = "magnetite-core", position = {x, y}, amount = amount_core}
                elseif distance <= deposit_radius then
                    local amount_deposit = calculate_amount(distance, min_amount, base_value * distance_factor, "normal")
                    surface.create_entity{name = "magnetite-valuable", position = {x, y}, amount = amount_deposit}
                elseif distance <= raw_radius then
                    local amount_raw = calculate_amount(distance, min_amount, base_value * distance_factor, "normal")
                    surface.create_entity{name = "magnetite-raw", position = {x, y}, amount = amount_raw}
                elseif distance <= valuable_radius then
                    local amount_valuable = calculate_amount(distance, min_amount, base_value * distance_factor, "normal")
                    surface.create_entity{name = "magnetite-deposit", position = {x, y}, amount = amount_valuable}
                end
    
                if distance <= debris_radius then
                    local amount_debris = spiral_galaxy_noise(x, y, center_x, center_y, num_arms, base_value * distance_factor)
                    if amount_debris > 0 then
                        surface.create_entity{name = "magnetite-debris", position = {x, y}, amount = amount_debris}
                    end
                end
            end
        end
    end


-- Adjusted event handler for less frequent spawns
script.on_event(defines.events.on_chunk_generated, function(event)
    local chunk_area = event.area
    local center_x = math.floor((chunk_area.left_top.x + chunk_area.right_bottom.x) / 2)
    local center_y = math.floor((chunk_area.left_top.y + chunk_area.right_bottom.y) / 2)

    -- Reduced chance for spawning a resource cluster
    if math.random() < 0.003 then  -- Adjust this value for spawn frequency 0.01 is 1%
        place_resource_cluster(center_x, center_y, event.surface)
    end
end)

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

