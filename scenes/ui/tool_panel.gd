extends PanelContainer

@onready var button_tool_axe: Button = $MarginContainer/HBoxContainer/ButtonToolAxe
@onready var button_tool_tilling: Button = $MarginContainer/HBoxContainer/ButtonToolTilling
@onready var button_tool_watering_can: Button = $MarginContainer/HBoxContainer/ButtonToolWateringCan
@onready var button_tool_corn: Button = $MarginContainer/HBoxContainer/ButtonToolCorn
@onready var button_tool_tomato: Button = $MarginContainer/HBoxContainer/ButtonToolTomato

func _ready() -> void:
	pass
	#ToolManager.enable_tool.connect(on_enable_tool_button)
	
	#button_tool_tilling.disabled = true
	#button_tool_tilling.focus_mode = Control.FOCUS_NONE
	#
	#button_tool_watering_can.disabled = true
	#button_tool_watering_can.focus_mode = Control.FOCUS_NONE
	#
	#button_tool_corn.disabled = true
	#button_tool_corn.focus_mode = Control.FOCUS_NONE
	#
	#button_tool_tomato.disabled = true
	#button_tool_tomato.focus_mode = Control.FOCUS_NONE
	
func _on_button_tool_axe_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.AxeWood)


func _on_button_tool_tiling_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.TillGround)


func _on_button_tool_watering_can_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.WaterCrops)


func _on_button_tool_corn_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.PlantCorn)


func _on_button_tool_tomato_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.PlantTomato)


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("release_tool"):
		ToolManager.select_tool(DataTypes.Tools.None)
		button_tool_axe.release_focus()
		button_tool_tilling.release_focus()
		button_tool_watering_can.release_focus()
		button_tool_corn.release_focus()
		button_tool_tomato.release_focus()
		

func on_enable_tool_button(tool: DataTypes.Tools) -> void:
	if tool == DataTypes.Tools.TillGround:
		button_tool_tilling.disabled = false
		button_tool_tilling.focus_mode = Control.FOCUS_ALL
	elif tool == DataTypes.Tools.WaterCrops:
		button_tool_watering_can.disabled = false
		button_tool_watering_can.focus_mode = Control.FOCUS_ALL
	elif tool == DataTypes.Tools.PlantCorn:
		button_tool_corn.disabled = false
		button_tool_corn.focus_mode = Control.FOCUS_ALL
	elif tool == DataTypes.Tools.PlantTomato:
		button_tool_tomato.disabled = false
		button_tool_tomato.focus_mode = Control.FOCUS_ALL
