{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "r_island",
  "creationCodeFile": "",
  "inheritCode": true,
  "inheritCreationOrder": true,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_6BB12D8A","path":"rooms/r_island/r_island.yy",},
    {"name":"inst_2400328","path":"rooms/r_island/r_island.yy",},
    {"name":"inst_1BBE69D9","path":"rooms/r_island/r_island.yy",},
    {"name":"inst_722092B8","path":"rooms/r_island/r_island.yy",},
    {"name":"inst_330E3224","path":"rooms/r_island/r_island.yy",},
    {"name":"inst_7DBDF6EF","path":"rooms/r_island/r_island.yy",},
    {"name":"inst_69B6F618","path":"rooms/r_island/r_island.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":0,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6BB12D8A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_6BB12D8A","path":"rooms/r_parent/r_parent.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":192.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2400328","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_room","path":"objects/obj_room_exit/obj_room_exit.yy",},"value":"r_village",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_x","path":"objects/obj_room_exit/obj_room_exit.yy",},"value":"592",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_y","path":"objects/obj_room_exit/obj_room_exit.yy",},"value":"240",},
          ],"rotation":0.0,"scaleX":2.0,"scaleY":6.0,"x":-16.0,"y":128.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Wall_Collision","depth":100,"effectEnabled":true,"effectType":null,"gridX":4,"gridY":4,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1BBE69D9","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":61.999996,"scaleY":4.0,"x":-20.0,"y":124.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_722092B8","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":4.0,"scaleY":18.0,"x":212.0,"y":140.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_330E3224","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":61.999996,"scaleY":4.0,"x":-20.0,"y":212.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7DBDF6EF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"x":204.0,"y":204.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_69B6F618","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parent_wall","path":"objects/obj_parent_wall/obj_parent_wall.yy",},"properties":[],"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"x":204.0,"y":140.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Collision","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":24,"SerialiseWidth":40,"TileCompressedData":[
-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,
-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-20,-2147483648,
-20,0,-20,-2147483648,-20,0,-20,-2147483648,-20,0,-60,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_collision","path":"tilesets/ts_collision/ts_collision.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesBuildingTop","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[
],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesBuilding","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[
],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesHill","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[
],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesDirt","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-240,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_dirt","path":"tilesets/ts_dirt/ts_dirt.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesGrass","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-80,-2147483648,-6,32,1,33,-13,-2147483648,-6,42,1,43,-13,-2147483648,-6,52,1,53,-11,0,
-8,-2147483648,-33,0,1,-2147483648,-19,0,-8,-2147483648,-12,0,-8,-2147483648,-11,0,-2,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_grass","path":"tilesets/ts_grass/ts_grass.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesWater","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":24,"SerialiseWidth":40,"TileCompressedData":[
-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,
-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-21,3,-19,1,-20,3,-20,1,-20,3,
-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,-20,1,-20,3,],"TileDataFormat":1,},"tilesetId":{"name":"ts_water","path":"tilesets/ts_water/ts_water.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
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
    "Height": 380,
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