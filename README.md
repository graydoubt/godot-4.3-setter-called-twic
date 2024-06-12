# In Godot 4.3 Node Export setters in nested scenes are called twice

When the `ui.tscn` scene is run directly, it'll print:

```
<CanvasLayer#28437382399>: setting button path
<CanvasLayer#28437382399>: setting int
<CanvasLayer#28437382399>: setting string
<Button#28454159616>: setting icon
UI:<CanvasLayer#28437382399>: setting button
UI:<CanvasLayer#28437382399>: setting label
UI:<CanvasLayer#28437382399>: setting label2
```

When the `main.tscn` scene is run, it'll set the exported properties of type Node twice:


```
<CanvasLayer#28571600128>: setting button path
<CanvasLayer#28571600128>: setting int
<CanvasLayer#28571600128>: setting string
<Button#28588377345>: setting icon
UI:<CanvasLayer#28571600128>: setting button
UI:<CanvasLayer#28571600128>: setting label
UI:<CanvasLayer#28571600128>: setting label2
UI:<CanvasLayer#28571600128>: setting button
UI:<CanvasLayer#28571600128>: setting label
UI:<CanvasLayer#28571600128>: setting label2
```

Note: If running the two scenes with `F6`, be sure to first kill the running instance with `F8`, otherwise the same scene will be run, even if a different scene tab is active. This seems to be a separate bug.


It doesn't seem to matter whether the `@export`ed property is referencing a node in the current scene or a separate scene.
The `ui.tscn` references a Button from a separate scene, a Label from a separate scene, and a label within the same scene.
The setter is called twice for each.


Filed as https://github.com/godotengine/godot/issues/93094
