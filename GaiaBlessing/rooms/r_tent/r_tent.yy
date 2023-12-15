{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "r_tent",
  "creationCodeFile": "",
  "inheritCode": true,
  "inheritCreationOrder": true,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_6BB12D8A_1","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_6AD48261_1","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_F5D74FC_1","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_4ED50220_1","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_1F5D8EB8_1","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_60F7EDEC","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_10E7184E","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_5DB64182","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_9E270DE","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_4539FB0E","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_3D23BE25","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_1C928A36","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_4FF1711C","path":"rooms/r_tent/r_tent.yy",},
    {"name":"inst_58D4EC1C","path":"rooms/r_tent/r_tent.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":0,"effectEnabled":true,"effectType":null,"gridX":1,"gridY":1,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6BB12D8A_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":5,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_6BB12D8A","path":"rooms/r_parent/r_parent.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":318.0,"y":232.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6AD48261_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_room","path":"objects/obj_room_exit/obj_room_exit.yy",},"value":"r_village",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_x","path":"objects/obj_room_exit/obj_room_exit.yy",},"value":"600",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_y","path":"objects/obj_room_exit/obj_room_exit.yy",},"value":"348",},
          ],"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"x":304.0,"y":237.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_F5D74FC_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_bed","path":"objects/obj_bed/obj_bed.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_parent_entity","path":"objects/obj_parent_entity/obj_parent_entity.yy",},"propertyId":{"name":"entity_activate_script","path":"objects/obj_parent_entity/obj_parent_entity.yy",},"value":"scr_new_textbox",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_parent_entity","path":"objects/obj_parent_entity/obj_parent_entity.yy",},"propertyId":{"name":"entity_activate_argument","path":"objects/obj_parent_entity/obj_parent_entity.yy",},"value":"[\"bed_start\"]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":350.0,"y":226.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4ED50220_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_card_factory","path":"objects/obj_card_factory/obj_card_factory.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_parent_entity","path":"objects/obj_parent_entity/obj_parent_entity.yy",},"propertyId":{"name":"entity_activate_script","path":"objects/obj_parent_entity/obj_parent_entity.yy",},"value":"scr_computer",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_parent_entity","path":"objects/obj_parent_entity/obj_parent_entity.yy",},"propertyId":{"name":"entity_activate_argument","path":"objects/obj_parent_entity/obj_parent_entity.yy",},"value":"[0]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":317.0,"y":168.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Wall_Collision","depth":100,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1F5D8EB8_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":10.0,"scaleY":6.5,"x":297.0,"y":152.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_60F7EDEC","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":6.0,"scaleY":5.75,"x":279.0,"y":178.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_10E7184E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":6.0,"scaleY":4.25,"x":340.0,"y":173.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5DB64182","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":7.5,"scaleY":8.25,"x":335.0,"y":193.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_9E270DE","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":4.25,"scaleY":23.25,"x":262.0,"y":149.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4539FB0E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":4.25,"scaleY":23.25,"x":361.0,"y":149.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3D23BE25","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":7.75,"scaleY":2.75,"x":273.0,"y":235.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1C928A36","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":7.75,"scaleY":2.75,"x":336.0,"y":235.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4FF1711C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":8.0,"scaleY":2.75,"x":304.0,"y":242.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_58D4EC1C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":23.5,"scaleY":3.5,"x":273.0,"y":149.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets_1","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_3F00EFBD","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"spr_building_tent_indoor","path":"sprites/spr_building_tent_indoor/spr_building_tent_indoor.yy",},"x":240.0,"y":96.0,},
      ],"depth":200,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Collision","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileCompressedData":[
-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,
-20,0,-20,-2147483648,-20,0,-460,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_collision","path":"tilesets/ts_collision/ts_collision.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesBuildingTop","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"tiles":{"SerialiseHeight":90,"SerialiseWidth":160,"TileCompressedData":[
-2,-2147483648,1,0,-5,-2147483648,-5,0,3,-2147483648,0,-2147483648,-21,0,-125,-2147483648,3,0,-2147483648,-2147483648,-4,0,3,-2147483648,0,0,-3,-2147483648,-22,0,-126,-2147483648,5,0,-2147483648,0,0,-2147483648,-29,0,-123,-2147483648,-2,0,-3,-2147483648,-32,0,-127,-2147483648,-33,0,-128,-2147483648,-32,0,-128,-2147483648,-8,0,1,-2147483648,-23,0,-126,-2147483648,-11,0,1,-2147483648,-22,0,-29,-2147483648,-14,0,-81,-2147483648,1,0,-8,-2147483648,-3,0,-2,-2147483648,-22,0,-27,-2147483648,-16,0,-84,-2147483648,1,0,-5,-2147483648,-2,0,3,-2147483648,0,-2147483648,-22,0,-26,-2147483648,-17,0,-87,-2147483648,-3,0,-2,-2147483648,3,0,-2147483648,-2147483648,-20,0,-28,-2147483648,-17,0,-92,-2147483648,3,0,-2147483648,-2147483648,-16,0,-32,-2147483648,-17,0,-95,-2147483648,-15,0,-33,-2147483648,-17,0,-95,-2147483648,-14,0,-30,-2147483648,-21,0,-95,-2147483648,-14,0,-24,-2147483648,
-27,0,-95,-2147483648,-14,0,-24,-2147483648,-27,0,-95,-2147483648,-14,0,-24,-2147483648,-27,0,-95,-2147483648,-14,0,-24,-2147483648,-27,0,-95,-2147483648,-14,0,-24,-2147483648,-27,0,-95,-2147483648,-14,0,-24,-2147483648,-27,0,-95,-2147483648,-14,0,-24,-2147483648,-27,0,-95,-2147483648,-14,0,-24,-2147483648,-27,0,-95,-2147483648,-14,0,-24,-2147483648,-27,0,-95,-2147483648,-14,0,-24,-2147483648,-27,0,-133,-2147483648,-27,0,-132,-2147483648,-28,0,-132,-2147483648,-28,0,-132,-2147483648,-28,0,-132,-2147483648,-28,0,-128,-2147483648,-32,0,-128,-2147483648,-32,0,-128,-2147483648,-32,0,-128,-2147483648,-32,0,-128,-2147483648,-32,0,-128,-2147483648,-32,0,-128,-2147483648,-32,0,-128,-2147483648,-32,0,-128,-2147483648,-32,0,-128,-2147483648,-32,0,-118,-2147483648,-42,0,-118,-2147483648,-42,0,-118,-2147483648,-42,0,-118,-2147483648,-42,0,-118,-2147483648,-42,0,-115,-2147483648,-45,0,-7280,-2147483648,
],"TileDataFormat":1,},"tilesetId":{"name":"ts_indoor_furniture_mini","path":"tilesets/ts_indoor_furniture_mini/ts_indoor_furniture_mini.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesBuilding","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-10,0,-10,-2147483648,-10,0,-10,-2147483648,-10,0,-10,-2147483648,-10,0,-10,-2147483648,-10,0,-10,-2147483648,
-10,0,-130,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_indoor_wall","path":"tilesets/ts_indoor_wall/ts_indoor_wall.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesHill","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[
],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesDirt","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-10,0,-10,-2147483648,-10,0,-10,-2147483648,-10,0,-10,-2147483648,-10,0,-10,-2147483648,-10,0,-10,-2147483648,
-10,0,-130,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_indoor_wall","path":"tilesets/ts_indoor_wall/ts_indoor_wall.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesGrass","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-66,-2147483648,-4,0,-170,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_grass","path":"tilesets/ts_grass/ts_grass.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesWater","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileCompressedData":[
-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,
-20,0,-20,-2147483648,-20,0,-460,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_water","path":"tilesets/ts_water/ts_water.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Game Rooms",
    "path": "folders/Rooms/Game Rooms.yy",
  },
  "parentRoom": {
    "name": "r_parent",
    "path": "rooms/r_parent/r_parent.yy",
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 360,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 640,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":720,"hspeed":-1,"hview":360,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1280,"wview":640,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": true,
  },
  "volume": 1.0,
}