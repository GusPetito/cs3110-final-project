exception UnImplemented
exception InvalidMove

type piece_type = Pawn | Rook | Knight | Bishop | King | Queen

type pos = int * int

type t = {role : piece_type; pos : pos; alive : pos; has_moved : bool}

(* Helper function for checking if a list of blocks are uninhabited *)
let check_blocks blk_lst = raise UnImplemented

let update_pos piece command = raise UnImplemented

let update_pawn old_pos new_pos = raise UnImplemented