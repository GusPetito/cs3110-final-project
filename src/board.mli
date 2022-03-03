type t

(** [get_piece_pos_list board] is the list of positions inhabited by pieces in board *)
val get_piece_list: t -> Piece.t list

(** [update board new_pos id] is the new board after moving piece with the id to new_pos *)
val update: t -> Pos.t -> int -> t

(** [to_string board] is the string representation of the board *)
val to_string: t -> string

(** [is_check board] is whether or not the board is checked *)
val is_check: t -> bool

(** [is_checkmate board] is whether or not the board is checked-mated *)
val is_checkmate: t -> bool

(** [is_stalemate board] is whether or not the board is stale-mated *)
val is_stalemate: t -> bool