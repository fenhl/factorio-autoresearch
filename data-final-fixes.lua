-- dynamically add sprites for tools (to display research ingredients)
for _, tool in pairs(data.raw.tool) do
    if tool.icon then
        data:extend({
            {
                type = "sprite",
                name = "auto_research_tool_" .. tool.name,
                filename = tool.icon or nil,
                priority = "extra-high-no-scale",
                width = tool.icon_size or 64,
                height = tool.icon_size or 64,
                scale = 64/(tool.icon_size or 64)
            }
        })
    end
end
