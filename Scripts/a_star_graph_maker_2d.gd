class_name AStarGraphMaker2D
extends Node2D

## Creates a graph for the A* path finding algorithm based on a tilemap.
##
## With inputs to tiles that should be used to create a graph, creates a graph
## that can be used to implement a custom version of the A* path finding
## algorithm.


# The value of one G cell away from a cell.
const NEIGHBOR_G_VALUE: int = 10
# The G value of one diagonal cell away from a cell.
# Approximated with pythagoras value.
const DIAGONAL_G_VALUE: int = 14


## The tilemap to generate the graph from.
@export var tilemap: TileMap
## Name of the custom data label that determines if a cell can be included in
## the graph. Must be a `bool` type custom label.
@export var allowed_tiles: String
## Neighbors are sorted by clockwise order from the right.
@export var cell_neighbors_to_check: Array[TileSet.CellNeighbor] = [
	TileSet.CELL_NEIGHBOR_RIGHT_SIDE,
#	TileSet.CELL_NEIGHBOR_BOTTOM_RIGHT_CORNER, 
	TileSet.CELL_NEIGHBOR_BOTTOM_SIDE,
#	TileSet.CELL_NEIGHBOR_BOTTOM_LEFT_CORNER,
	TileSet.CELL_NEIGHBOR_LEFT_SIDE,
#	TileSet.CELL_NEIGHBOR_TOP_LEFT_CORNER,
	TileSet.CELL_NEIGHBOR_TOP_SIDE,
#	TileSet.CELL_NEIGHBOR_TOP_RIGHT_CORNER
]


# Creates a graph.
# Based on A* Pathfinding (E01: algorithm explanation) by Sebastian Lague.
# https://www.youtube.com/watch?v=-L-WgKMFuhE
func create_graph(start_cell: Vector2i, end_cell: Vector2i, layer: int):
	# We set the current node to the start just for the first iteration
#	var current_node = {
#		"cell": start_cell,
#		"f_cost": 0,
#		"parent": null,
#		"evaluated": false}

	# Here are some helpful functions
#	var cell_neighbor_position = tilemap.get_neighbor_cell(current_node["cell"], cell_neighbor)
#	var neighbor_cell_data = tilemap.get_cell_tile_data(layer, cell_neighbor_position)

	var node_path = []
	return node_path


func _calculate_f_cost(
	cell: Vector2i,
	starting_cell: Vector2i,
	target_cell: Vector2i,
	f_cost: int = 0):
		var final_f_cost = f_cost
		return final_f_cost
