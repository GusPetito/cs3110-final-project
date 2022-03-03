exception InvalidMove

(** The type to represent a piece and its data *)
type t

(** [get_pos piece] is the position of piece *)
val get_pos: t -> Pos.t

(** [is_alive piece] is whether or not piece is still alive *)
val is_alive: t -> bool

(** [update_pos piece_list piece new_loc] is a true if the new_loc is reachable by piece, given the current pos_list of pieces on the board, and false otherwise *)
val is_valid_move: t list -> t -> Pos.t -> bool