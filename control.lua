function calculate_amount(distance, min_amount, base_value, layer_type)
    local amount
    if distance == 0 then
        distance = 0.1
    end

    if layer_type == "core" then
        -- Higher density closer to the center
        amount = base_value / distance
    elseif layer_type == "normal" then
        -- Consistent density for normal layer (Iron deposit)
        amount = base_value * 2
    elseif layer_type == "debris" then
        -- Lower density as distance increases
        amount = base_value / (distance * 1.2)
    end

    return math.max(min_amount, amount)
end



-- Function to place resources in a cluster with a core, normal layer, and debris layer
function place_resource_cluster(center_x, center_y, seed)
    local core_radius = 5
    local normal_radius = 10
    local debris_radius = 15
    local min_amount = 500
    local base_value = 1000

    for x = center_x - debris_radius, center_x + debris_radius do
        for y = center_y - debris_radius, center_y + debris_radius do
            local distance = math.sqrt((x - center_x)^2 + (y - center_y)^2)

            if distance <= core_radius then
                local amount_core = calculate_amount(distance, min_amount, base_value, "core")
                game.surfaces[1].create_entity{name = "magnetite-ore", position = {x, y}, amount = amount_core}
            elseif distance <= normal_radius then
                local amount_normal = calculate_amount(distance, min_amount, base_value, "normal")
                game.surfaces[1].create_entity{name = "iron-deposit", position = {x, y}, amount = amount_normal}
            end
            
            if distance <= debris_radius then
                local amount_debris = calculate_amount(distance, min_amount, base_value, "debris")
                game.surfaces[1].create_entity{name = "temporary-debris", position = {x, y}, amount = amount_debris}
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
    if math.random() < 0.005 then  -- Adjust this value for spawn frequency 0.01 is 1%
        place_resource_cluster(center_x, center_y, game.surfaces[1].map_gen_settings.seed)
    end
end)

