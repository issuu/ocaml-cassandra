(*
 Autogenerated by Thrift

 DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING
*)

open Thrift
module ConsistencyLevel : 
sig
  type t = 
    | ZERO
    | ONE
    | QUORUM
    | DCQUORUM
    | DCQUORUMSYNC
    | ALL
    | ANY
  val to_i : t -> int
  val of_i : int -> t
end
class column :
object
  method get_name : string option
  method grab_name : string
  method set_name : string -> unit
  method get_value : string option
  method grab_value : string
  method set_value : string -> unit
  method get_timestamp : Int64.t option
  method grab_timestamp : Int64.t
  method set_timestamp : Int64.t -> unit
  method write : Protocol.t -> unit
end
val read_column : Protocol.t -> column
class superColumn :
object
  method get_name : string option
  method grab_name : string
  method set_name : string -> unit
  method get_columns : column list option
  method grab_columns : column list
  method set_columns : column list -> unit
  method write : Protocol.t -> unit
end
val read_superColumn : Protocol.t -> superColumn
class columnOrSuperColumn :
object
  method get_column : column option
  method grab_column : column
  method set_column : column -> unit
  method get_super_column : superColumn option
  method grab_super_column : superColumn
  method set_super_column : superColumn -> unit
  method write : Protocol.t -> unit
end
val read_columnOrSuperColumn : Protocol.t -> columnOrSuperColumn
class columnParent :
object
  method get_column_family : string option
  method grab_column_family : string
  method set_column_family : string -> unit
  method get_super_column : string option
  method grab_super_column : string
  method set_super_column : string -> unit
  method write : Protocol.t -> unit
end
val read_columnParent : Protocol.t -> columnParent
class columnPath :
object
  method get_column_family : string option
  method grab_column_family : string
  method set_column_family : string -> unit
  method get_super_column : string option
  method grab_super_column : string
  method set_super_column : string -> unit
  method get_column : string option
  method grab_column : string
  method set_column : string -> unit
  method write : Protocol.t -> unit
end
val read_columnPath : Protocol.t -> columnPath
class sliceRange :
object
  method get_start : string option
  method grab_start : string
  method set_start : string -> unit
  method get_finish : string option
  method grab_finish : string
  method set_finish : string -> unit
  method get_reversed : bool option
  method grab_reversed : bool
  method set_reversed : bool -> unit
  method get_count : int option
  method grab_count : int
  method set_count : int -> unit
  method write : Protocol.t -> unit
end
val read_sliceRange : Protocol.t -> sliceRange
class slicePredicate :
object
  method get_column_names : string list option
  method grab_column_names : string list
  method set_column_names : string list -> unit
  method get_slice_range : sliceRange option
  method grab_slice_range : sliceRange
  method set_slice_range : sliceRange -> unit
  method write : Protocol.t -> unit
end
val read_slicePredicate : Protocol.t -> slicePredicate
class keyRange :
object
  method get_start_key : string option
  method grab_start_key : string
  method set_start_key : string -> unit
  method get_end_key : string option
  method grab_end_key : string
  method set_end_key : string -> unit
  method get_start_token : string option
  method grab_start_token : string
  method set_start_token : string -> unit
  method get_end_token : string option
  method grab_end_token : string
  method set_end_token : string -> unit
  method get_count : int option
  method grab_count : int
  method set_count : int -> unit
  method write : Protocol.t -> unit
end
val read_keyRange : Protocol.t -> keyRange
class keySlice :
object
  method get_key : string option
  method grab_key : string
  method set_key : string -> unit
  method get_columns : columnOrSuperColumn list option
  method grab_columns : columnOrSuperColumn list
  method set_columns : columnOrSuperColumn list -> unit
  method write : Protocol.t -> unit
end
val read_keySlice : Protocol.t -> keySlice
class deletion :
object
  method get_timestamp : Int64.t option
  method grab_timestamp : Int64.t
  method set_timestamp : Int64.t -> unit
  method get_super_column : string option
  method grab_super_column : string
  method set_super_column : string -> unit
  method get_predicate : slicePredicate option
  method grab_predicate : slicePredicate
  method set_predicate : slicePredicate -> unit
  method write : Protocol.t -> unit
end
val read_deletion : Protocol.t -> deletion
class mutation :
object
  method get_column_or_supercolumn : columnOrSuperColumn option
  method grab_column_or_supercolumn : columnOrSuperColumn
  method set_column_or_supercolumn : columnOrSuperColumn -> unit
  method get_deletion : deletion option
  method grab_deletion : deletion
  method set_deletion : deletion -> unit
  method write : Protocol.t -> unit
end
val read_mutation : Protocol.t -> mutation
class tokenRange :
object
  method get_start_token : string option
  method grab_start_token : string
  method set_start_token : string -> unit
  method get_end_token : string option
  method grab_end_token : string
  method set_end_token : string -> unit
  method get_endpoints : string list option
  method grab_endpoints : string list
  method set_endpoints : string list -> unit
  method write : Protocol.t -> unit
end
val read_tokenRange : Protocol.t -> tokenRange
class authenticationRequest :
object
  method get_credentials : (string,string) Hashtbl.t option
  method grab_credentials : (string,string) Hashtbl.t
  method set_credentials : (string,string) Hashtbl.t -> unit
  method write : Protocol.t -> unit
end
val read_authenticationRequest : Protocol.t -> authenticationRequest
class notFoundException :
object
  method write : Protocol.t -> unit
end
exception NotFoundException of notFoundException
val read_notFoundException : Protocol.t -> notFoundException
class invalidRequestException :
object
  method get_why : string option
  method grab_why : string
  method set_why : string -> unit
  method write : Protocol.t -> unit
end
exception InvalidRequestException of invalidRequestException
val read_invalidRequestException : Protocol.t -> invalidRequestException
class unavailableException :
object
  method write : Protocol.t -> unit
end
exception UnavailableException of unavailableException
val read_unavailableException : Protocol.t -> unavailableException
class timedOutException :
object
  method write : Protocol.t -> unit
end
exception TimedOutException of timedOutException
val read_timedOutException : Protocol.t -> timedOutException
class authenticationException :
object
  method get_why : string option
  method grab_why : string
  method set_why : string -> unit
  method write : Protocol.t -> unit
end
exception AuthenticationException of authenticationException
val read_authenticationException : Protocol.t -> authenticationException
class authorizationException :
object
  method get_why : string option
  method grab_why : string
  method set_why : string -> unit
  method write : Protocol.t -> unit
end
exception AuthorizationException of authorizationException
val read_authorizationException : Protocol.t -> authorizationException