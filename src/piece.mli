exception InvalidMove

(** The type to represent a piece and its data *)
type t

(** [update_pos board piece command] is a new piece with the new location given by command using the current board. Raises InvalidMove if the move is not valid*)
val update_pos: Board.t -> t -> string -> t