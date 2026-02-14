extends Node

var tileMap: TileMapLayer

func set_cell(coords, source_id, atlas_coords):
	tileMap.set_cell(coords, source_id, atlas_coords)

func local_to_map(coords):
	var local = tileMap.to_local(coords)
	return tileMap.local_to_map(local)
