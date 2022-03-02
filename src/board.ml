open Game

exception UnImplemented

type t = Piece.t list

let board = raise UnImplemented

let get_piece_pos_list board = let alive_board = List.filter (fun piece -> Piece.is_alive piece) board in
List.map (fun piece -> Piece.get_pos piece) alive_board