(*
 Autogenerated by Thrift Compiler (0.9.0)

 DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING
*)

open Thrift
open Cassandra_types

class virtual iface :
object
  method virtual login : authenticationRequest option -> unit
  method virtual set_keyspace : string option -> unit
  method virtual get : string option -> columnPath option -> ConsistencyLevel.t option -> columnOrSuperColumn
  method virtual get_slice : string option -> columnParent option -> slicePredicate option -> ConsistencyLevel.t option -> columnOrSuperColumn list
  method virtual get_count : string option -> columnParent option -> slicePredicate option -> ConsistencyLevel.t option -> Int32.t
  method virtual multiget_slice : string list option -> columnParent option -> slicePredicate option -> ConsistencyLevel.t option -> (string,columnOrSuperColumn list) Hashtbl.t
  method virtual multiget_count : string list option -> columnParent option -> slicePredicate option -> ConsistencyLevel.t option -> (string,Int32.t) Hashtbl.t
  method virtual get_range_slices : columnParent option -> slicePredicate option -> keyRange option -> ConsistencyLevel.t option -> keySlice list
  method virtual get_paged_slice : string option -> keyRange option -> string option -> ConsistencyLevel.t option -> keySlice list
  method virtual get_indexed_slices : columnParent option -> indexClause option -> slicePredicate option -> ConsistencyLevel.t option -> keySlice list
  method virtual insert : string option -> columnParent option -> column option -> ConsistencyLevel.t option -> unit
  method virtual add : string option -> columnParent option -> counterColumn option -> ConsistencyLevel.t option -> unit
  method virtual remove : string option -> columnPath option -> Int64.t option -> ConsistencyLevel.t option -> unit
  method virtual remove_counter : string option -> columnPath option -> ConsistencyLevel.t option -> unit
  method virtual batch_mutate : (string,(string,mutation list) Hashtbl.t) Hashtbl.t option -> ConsistencyLevel.t option -> unit
  method virtual truncate : string option -> unit
  method virtual describe_schema_versions : (string,string list) Hashtbl.t
  method virtual describe_keyspaces : ksDef list
  method virtual describe_cluster_name : string
  method virtual describe_version : string
  method virtual describe_ring : string option -> tokenRange list
  method virtual describe_token_map : (string,string) Hashtbl.t
  method virtual describe_partitioner : string
  method virtual describe_snitch : string
  method virtual describe_keyspace : string option -> ksDef
  method virtual describe_splits : string option -> string option -> string option -> Int32.t option -> string list
  method virtual system_add_column_family : cfDef option -> string
  method virtual system_drop_column_family : string option -> string
  method virtual system_add_keyspace : ksDef option -> string
  method virtual system_drop_keyspace : string option -> string
  method virtual system_update_keyspace : ksDef option -> string
  method virtual system_update_column_family : cfDef option -> string
  method virtual execute_cql_query : string option -> Compression.t option -> cqlResult
  method virtual prepare_cql_query : string option -> Compression.t option -> cqlPreparedResult
  method virtual execute_prepared_cql_query : Int32.t option -> string list option -> cqlResult
  method virtual set_cql_version : string option -> unit
end

class client : Protocol.t -> Protocol.t -> 
object
  method login : authenticationRequest -> unit
  method set_keyspace : string -> unit
  method get : string -> columnPath -> ConsistencyLevel.t -> columnOrSuperColumn
  method get_slice : string -> columnParent -> slicePredicate -> ConsistencyLevel.t -> columnOrSuperColumn list
  method get_count : string -> columnParent -> slicePredicate -> ConsistencyLevel.t -> Int32.t
  method multiget_slice : string list -> columnParent -> slicePredicate -> ConsistencyLevel.t -> (string,columnOrSuperColumn list) Hashtbl.t
  method multiget_count : string list -> columnParent -> slicePredicate -> ConsistencyLevel.t -> (string,Int32.t) Hashtbl.t
  method get_range_slices : columnParent -> slicePredicate -> keyRange -> ConsistencyLevel.t -> keySlice list
  method get_paged_slice : string -> keyRange -> string -> ConsistencyLevel.t -> keySlice list
  method get_indexed_slices : columnParent -> indexClause -> slicePredicate -> ConsistencyLevel.t -> keySlice list
  method insert : string -> columnParent -> column -> ConsistencyLevel.t -> unit
  method add : string -> columnParent -> counterColumn -> ConsistencyLevel.t -> unit
  method remove : string -> columnPath -> Int64.t -> ConsistencyLevel.t -> unit
  method remove_counter : string -> columnPath -> ConsistencyLevel.t -> unit
  method batch_mutate : (string,(string,mutation list) Hashtbl.t) Hashtbl.t -> ConsistencyLevel.t -> unit
  method truncate : string -> unit
  method describe_schema_versions : (string,string list) Hashtbl.t
  method describe_keyspaces : ksDef list
  method describe_cluster_name : string
  method describe_version : string
  method describe_ring : string -> tokenRange list
  method describe_token_map : (string,string) Hashtbl.t
  method describe_partitioner : string
  method describe_snitch : string
  method describe_keyspace : string -> ksDef
  method describe_splits : string -> string -> string -> Int32.t -> string list
  method system_add_column_family : cfDef -> string
  method system_drop_column_family : string -> string
  method system_add_keyspace : ksDef -> string
  method system_drop_keyspace : string -> string
  method system_update_keyspace : ksDef -> string
  method system_update_column_family : cfDef -> string
  method execute_cql_query : string -> Compression.t -> cqlResult
  method prepare_cql_query : string -> Compression.t -> cqlPreparedResult
  method execute_prepared_cql_query : Int32.t -> string list -> cqlResult
  method set_cql_version : string -> unit
end

class processor : iface ->
object
  inherit Processor.t

  val processMap : (string, int * Protocol.t * Protocol.t -> unit) Hashtbl.t
  method process : Protocol.t -> Protocol.t -> bool
end

