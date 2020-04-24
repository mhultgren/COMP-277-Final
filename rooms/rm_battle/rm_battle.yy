
{
    "name": "rm_battle",
    "id": "5ce14978-5891-4c1c-95d7-35cfa0691aed",
    "creationCodeFile": "",
    "inheritCode": false,
    "inheritCreationOrder": false,
    "inheritLayers": false,
    "instanceCreationOrderIDs": [
        "1f3401a4-08d1-4942-a3d8-b653812c25f3",
        "94488d62-74ef-4eb7-aff9-77c111c873e5",
        "c6c51c94-4fa1-468c-a2e9-891abfb03834"
    ],
    "IsDnD": false,
    "layers": [
        {
            "__type": "GMRInstanceLayer_Model:#YoYoStudio.MVCFormat",
            "name": "Enemy",
            "id": "fc4083c4-0194-43cc-b067-82ebcb319b41",
            "depth": 0,
            "grid_x": 32,
            "grid_y": 32,
            "hierarchyFrozen": false,
            "hierarchyVisible": true,
            "inheritLayerDepth": false,
            "inheritLayerSettings": false,
            "inheritSubLayers": false,
            "inheritVisibility": false,
            "instances": [
{"name": "inst_5F4746EA","id": "94488d62-74ef-4eb7-aff9-77c111c873e5","colour": { "Value": 4294967295 },"creationCodeFile": "","creationCodeType": "","ignore": false,"imageIndex": 0,"imageSpeed": 1,"inheritCode": false,"inheritItemSettings": false,"IsDnD": false,"m_originalParentID": "00000000-0000-0000-0000-000000000000","m_serialiseFrozen": false,"modelName": "GMRInstance","name_with_no_file_rename": "inst_5F4746EA","objId": "88e95949-4093-4d7c-83bd-86c1237a1039","properties": null,"rotation": 0,"scaleX": 1,"scaleY": 1,"mvc": "1.1","x": 288,"y": 192}
            ],
            "layers": [

            ],
            "m_parentID": "00000000-0000-0000-0000-000000000000",
            "m_serialiseFrozen": false,
            "modelName": "GMRInstanceLayer",
            "mvc": "1.0",
            "userdefined_depth": false,
            "visible": true
        },
        {
            "__type": "GMRInstanceLayer_Model:#YoYoStudio.MVCFormat",
            "name": "UI",
            "id": "5743dd89-8282-404b-b8f2-07197701de7a",
            "depth": 100,
            "grid_x": 32,
            "grid_y": 32,
            "hierarchyFrozen": false,
            "hierarchyVisible": true,
            "inheritLayerDepth": false,
            "inheritLayerSettings": false,
            "inheritSubLayers": false,
            "inheritVisibility": false,
            "instances": [
{"name": "inst_4E8ABB1F","id": "1f3401a4-08d1-4942-a3d8-b653812c25f3","colour": { "Value": 4294967295 },"creationCodeFile": "","creationCodeType": "","ignore": false,"imageIndex": 0,"imageSpeed": 1,"inheritCode": false,"inheritItemSettings": false,"IsDnD": false,"m_originalParentID": "00000000-0000-0000-0000-000000000000","m_serialiseFrozen": false,"modelName": "GMRInstance","name_with_no_file_rename": "inst_4E8ABB1F","objId": "c05968d6-f3a9-466a-a2bd-78aef566c193","properties": null,"rotation": 0,"scaleX": 1,"scaleY": 1,"mvc": "1.1","x": 0,"y": 352},
{"name": "inst_61FD8092","id": "c6c51c94-4fa1-468c-a2e9-891abfb03834","colour": { "Value": 4294967295 },"creationCodeFile": "","creationCodeType": "","ignore": false,"imageIndex": 0,"imageSpeed": 1,"inheritCode": false,"inheritItemSettings": false,"IsDnD": false,"m_originalParentID": "00000000-0000-0000-0000-000000000000","m_serialiseFrozen": false,"modelName": "GMRInstance","name_with_no_file_rename": "inst_61FD8092","objId": "d73d11c3-7066-4966-9cb1-3a2a41f17a8a","properties": null,"rotation": 0,"scaleX": 1,"scaleY": 1,"mvc": "1.1","x": 32,"y": 256}
            ],
            "layers": [

            ],
            "m_parentID": "00000000-0000-0000-0000-000000000000",
            "m_serialiseFrozen": false,
            "modelName": "GMRInstanceLayer",
            "mvc": "1.0",
            "userdefined_depth": false,
            "visible": true
        },
        {
            "__type": "GMRBackgroundLayer_Model:#YoYoStudio.MVCFormat",
            "name": "Background",
            "id": "9f54ecd2-dc0e-45ba-ad6c-9ad1ffd25efc",
            "animationFPS": 15,
            "animationSpeedType": "0",
            "colour": { "Value": 4279834905 },
            "depth": 200,
            "grid_x": 32,
            "grid_y": 32,
            "hierarchyFrozen": false,
            "hierarchyVisible": true,
            "hspeed": 0,
            "htiled": false,
            "inheritLayerDepth": false,
            "inheritLayerSettings": false,
            "inheritSubLayers": false,
            "inheritVisibility": false,
            "layers": [

            ],
            "m_parentID": "00000000-0000-0000-0000-000000000000",
            "m_serialiseFrozen": false,
            "modelName": "GMRBackgroundLayer",
            "mvc": "1.0",
            "spriteId": "00000000-0000-0000-0000-000000000000",
            "stretch": false,
            "userdefined_animFPS": false,
            "userdefined_depth": false,
            "visible": true,
            "vspeed": 0,
            "vtiled": false,
            "x": 0,
            "y": 0
        }
    ],
    "modelName": "GMRoom",
    "parentId": "00000000-0000-0000-0000-000000000000",
    "physicsSettings":     {
        "id": "a738486a-e069-481e-ac15-87d937b55839",
        "inheritPhysicsSettings": false,
        "modelName": "GMRoomPhysicsSettings",
        "PhysicsWorld": false,
        "PhysicsWorldGravityX": 0,
        "PhysicsWorldGravityY": 10,
        "PhysicsWorldPixToMeters": 0.1,
        "mvc": "1.0"
    },
    "roomSettings":     {
        "id": "66fc6ec2-1e22-4b0a-a49c-47af45555f3f",
        "Height": 480,
        "inheritRoomSettings": false,
        "modelName": "GMRoomSettings",
        "persistent": false,
        "mvc": "1.0",
        "Width": 640
    },
    "mvc": "1.0",
    "views": [
{"id": "21216f52-9243-47e5-951e-257a4897bcf9","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
{"id": "9e6e1ba1-4310-404b-a6b7-b9dffe0c223f","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
{"id": "5818be1e-a556-4c34-bf75-c2d5c54322c7","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
{"id": "2fe1a30a-168c-4049-a232-a7157f863a4e","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
{"id": "1a8a4bf6-1972-4f63-8a04-cc515c5291f1","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
{"id": "b6e9bd0a-4113-4da8-85a5-7fc7d539ea69","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
{"id": "de393f9c-d4ac-4c1c-af75-5a252b046b82","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0},
{"id": "0f49f88e-6c36-4423-a2cd-e54a3a43f6a5","hborder": 32,"hport": 768,"hspeed": -1,"hview": 768,"inherit": false,"modelName": "GMRView","objId": "00000000-0000-0000-0000-000000000000","mvc": "1.0","vborder": 32,"visible": false,"vspeed": -1,"wport": 1024,"wview": 1024,"xport": 0,"xview": 0,"yport": 0,"yview": 0}
    ],
    "viewSettings":     {
        "id": "188dd0ff-2bae-489c-8be3-167afa2cb16c",
        "clearDisplayBuffer": true,
        "clearViewBackground": false,
        "enableViews": false,
        "inheritViewSettings": false,
        "modelName": "GMRoomViewSettings",
        "mvc": "1.0"
    }
}