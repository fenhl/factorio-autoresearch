-- dynamically add sprites for tools (to display research ingredients)
for _, tool in pairs(data.raw.tool) do
    if tool.icon or tool.icons then
        data:extend({
            {
                type = "sprite",
                name = "auto_research_tool_" .. tool.name,
                filename = tool.icon or (tool.icons[1] and tool.icons[1].icon) or nil,
                priority = "extra-high-no-scale",
                width = tool.icon_size or (tool.icons[1].icon_size) or 32,
                height = tool.icon_size or (tool.icons[1].icon_size) or 32,
                scale = 32/(tool.icon_size or (tool.icons[1].icon_size) or 32)
            }
        })
    end
end
