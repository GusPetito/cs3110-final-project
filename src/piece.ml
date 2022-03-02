open Game

exception UnImplemented
exception InvalidMove

type piece_type = Pawn | Rook | Knight | Bishop | King | Queen

type t = {role : piece_type; pos : Pos.t; alive : bool; has_moved : bool}

let get_pos piece = piece.pos

let is_alive piece = piece.alive


(* Helper function for checking if one block is uninhabited in the current board*)
let check_block_covered pos curr_board_pos = List.fold_left (fun acc curr_pos -> curr_pos <> pos && acc) true curr_board_pos

(* Helper function for checking if a list of blocks are uninhabited *)
let check_blocks blk_lst curr_board_pos = List.fold_left (fun acc blk -> not (check_block_covered blk curr_board_pos) && acc) true blk_lst

let update_pawn board old_pos new_pos = raise UnImplemented

let update_rook board old_pos new_pos =
  (Pos.fst old_pos = Pos.fst new_pos || Pos.snd old_pos = Pos.snd new_pos) &&
  (let iter_num = Pos.minus new_pos old_pos |> Pos.non_zero_entry |> abs in (
    let rec add_pos_iterator lst curr_num = if curr_num > 0 then Pos.add old_pos (Pos.multiply (Pos.make_ones (Pos.minus new_pos old_pos)) curr_num) :: add_pos_iterator lst (curr_num - 1) else [ old_pos ] in
      check_blocks (add_pos_iterator [] iter_num) (Board.get_piece_pos_list board)
  ))

let update_pos board piece command = let new_pos = Pos.parse_command command in
if match piece.role with
| Rook -> update_rook board piece.pos new_pos
| _ -> false
then {piece with pos = new_pos}
else raise InvalidMove
