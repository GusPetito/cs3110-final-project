type t

val fst: t -> int

val snd: t -> int

(** [add pos1 pos2] is the component-wide addition of pos1 and pos2 *)
val add: t -> t -> t

(** [minus pos1 pos2] is the component-wide subtraction of pos2 from pos1 *)
val minus: t -> t -> t

(** [multiply pos1 scalar] is the scalar multiplication of pos1 with scalar*)
val multiply: t -> int -> t

(** [non_zero_entry pos1] is the first non-zero entry in pos1 *)
val non_zero_entry: t -> int

(** [make_ones pos1] makes all the non_zero entries either one or negative one, depending on the sign*)
val make_ones: t -> t

(** [parse_command command] parses the string command into a position *)
val parse_command: string -> t