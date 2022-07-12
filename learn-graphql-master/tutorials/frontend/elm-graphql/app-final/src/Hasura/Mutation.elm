-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Hasura.Mutation exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Hasura.InputObject
import Hasura.Interface
import Hasura.Object
import Hasura.Scalar
import Hasura.ScalarCodecs
import Hasura.Union
import Json.Decode as Decode exposing (Decoder)


type alias DeleteTodosRequiredArguments =
    { where_ : Hasura.InputObject.Todos_bool_exp }


{-| delete data from the table: "todos"

  - where\_ - filter the rows which have to be deleted

-}
delete_todos :
    DeleteTodosRequiredArguments
    -> SelectionSet decodesTo Hasura.Object.Todos_mutation_response
    -> SelectionSet (Maybe decodesTo) RootMutation
delete_todos requiredArgs object_ =
    Object.selectionForCompositeField "delete_todos" [ Argument.required "where" requiredArgs.where_ Hasura.InputObject.encodeTodos_bool_exp ] object_ (identity >> Decode.nullable)


type alias DeleteTodosByPkRequiredArguments =
    { id : Int }


{-| delete single row from the table: "todos"
-}
delete_todos_by_pk :
    DeleteTodosByPkRequiredArguments
    -> SelectionSet decodesTo Hasura.Object.Todos
    -> SelectionSet (Maybe decodesTo) RootMutation
delete_todos_by_pk requiredArgs object_ =
    Object.selectionForCompositeField "delete_todos_by_pk" [ Argument.required "id" requiredArgs.id Encode.int ] object_ (identity >> Decode.nullable)


type alias InsertTodosOptionalArguments =
    { on_conflict : OptionalArgument Hasura.InputObject.Todos_on_conflict }


type alias InsertTodosRequiredArguments =
    { objects : List Hasura.InputObject.Todos_insert_input }


{-| insert data into the table: "todos"

  - objects - the rows to be inserted
  - on\_conflict - on conflict condition

-}
insert_todos :
    (InsertTodosOptionalArguments -> InsertTodosOptionalArguments)
    -> InsertTodosRequiredArguments
    -> SelectionSet decodesTo Hasura.Object.Todos_mutation_response
    -> SelectionSet (Maybe decodesTo) RootMutation
insert_todos fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { on_conflict = Absent }

        optionalArgs =
            [ Argument.optional "on_conflict" filledInOptionals.on_conflict Hasura.InputObject.encodeTodos_on_conflict ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "insert_todos" (optionalArgs ++ [ Argument.required "objects" requiredArgs.objects (Hasura.InputObject.encodeTodos_insert_input |> Encode.list) ]) object_ (identity >> Decode.nullable)


type alias InsertTodosOneOptionalArguments =
    { on_conflict : OptionalArgument Hasura.InputObject.Todos_on_conflict }


type alias InsertTodosOneRequiredArguments =
    { object : Hasura.InputObject.Todos_insert_input }


{-| insert a single row into the table: "todos"

  - object - the row to be inserted
  - on\_conflict - on conflict condition

-}
insert_todos_one :
    (InsertTodosOneOptionalArguments -> InsertTodosOneOptionalArguments)
    -> InsertTodosOneRequiredArguments
    -> SelectionSet decodesTo Hasura.Object.Todos
    -> SelectionSet (Maybe decodesTo) RootMutation
insert_todos_one fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { on_conflict = Absent }

        optionalArgs =
            [ Argument.optional "on_conflict" filledInOptionals.on_conflict Hasura.InputObject.encodeTodos_on_conflict ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "insert_todos_one" (optionalArgs ++ [ Argument.required "object" requiredArgs.object Hasura.InputObject.encodeTodos_insert_input ]) object_ (identity >> Decode.nullable)


type alias UpdateTodosOptionalArguments =
    { set_ : OptionalArgument Hasura.InputObject.Todos_set_input }


type alias UpdateTodosRequiredArguments =
    { where_ : Hasura.InputObject.Todos_bool_exp }


{-| update data of the table: "todos"

  - set\_ - sets the columns of the filtered rows to the given values
  - where\_ - filter the rows which have to be updated

-}
update_todos :
    (UpdateTodosOptionalArguments -> UpdateTodosOptionalArguments)
    -> UpdateTodosRequiredArguments
    -> SelectionSet decodesTo Hasura.Object.Todos_mutation_response
    -> SelectionSet (Maybe decodesTo) RootMutation
update_todos fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { set_ = Absent }

        optionalArgs =
            [ Argument.optional "_set" filledInOptionals.set_ Hasura.InputObject.encodeTodos_set_input ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "update_todos" (optionalArgs ++ [ Argument.required "where" requiredArgs.where_ Hasura.InputObject.encodeTodos_bool_exp ]) object_ (identity >> Decode.nullable)


type alias UpdateTodosByPkOptionalArguments =
    { set_ : OptionalArgument Hasura.InputObject.Todos_set_input }


type alias UpdateTodosByPkRequiredArguments =
    { pk_columns : Hasura.InputObject.Todos_pk_columns_input }


{-| update single row of the table: "todos"

  - set\_ - sets the columns of the filtered rows to the given values

-}
update_todos_by_pk :
    (UpdateTodosByPkOptionalArguments -> UpdateTodosByPkOptionalArguments)
    -> UpdateTodosByPkRequiredArguments
    -> SelectionSet decodesTo Hasura.Object.Todos
    -> SelectionSet (Maybe decodesTo) RootMutation
update_todos_by_pk fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { set_ = Absent }

        optionalArgs =
            [ Argument.optional "_set" filledInOptionals.set_ Hasura.InputObject.encodeTodos_set_input ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "update_todos_by_pk" (optionalArgs ++ [ Argument.required "pk_columns" requiredArgs.pk_columns Hasura.InputObject.encodeTodos_pk_columns_input ]) object_ (identity >> Decode.nullable)


type alias UpdateUsersOptionalArguments =
    { set_ : OptionalArgument Hasura.InputObject.Users_set_input }


type alias UpdateUsersRequiredArguments =
    { where_ : Hasura.InputObject.Users_bool_exp }


{-| update data of the table: "users"

  - set\_ - sets the columns of the filtered rows to the given values
  - where\_ - filter the rows which have to be updated

-}
update_users :
    (UpdateUsersOptionalArguments -> UpdateUsersOptionalArguments)
    -> UpdateUsersRequiredArguments
    -> SelectionSet decodesTo Hasura.Object.Users_mutation_response
    -> SelectionSet (Maybe decodesTo) RootMutation
update_users fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { set_ = Absent }

        optionalArgs =
            [ Argument.optional "_set" filledInOptionals.set_ Hasura.InputObject.encodeUsers_set_input ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "update_users" (optionalArgs ++ [ Argument.required "where" requiredArgs.where_ Hasura.InputObject.encodeUsers_bool_exp ]) object_ (identity >> Decode.nullable)


type alias UpdateUsersByPkOptionalArguments =
    { set_ : OptionalArgument Hasura.InputObject.Users_set_input }


type alias UpdateUsersByPkRequiredArguments =
    { pk_columns : Hasura.InputObject.Users_pk_columns_input }


{-| update single row of the table: "users"

  - set\_ - sets the columns of the filtered rows to the given values

-}
update_users_by_pk :
    (UpdateUsersByPkOptionalArguments -> UpdateUsersByPkOptionalArguments)
    -> UpdateUsersByPkRequiredArguments
    -> SelectionSet decodesTo Hasura.Object.Users
    -> SelectionSet (Maybe decodesTo) RootMutation
update_users_by_pk fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { set_ = Absent }

        optionalArgs =
            [ Argument.optional "_set" filledInOptionals.set_ Hasura.InputObject.encodeUsers_set_input ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "update_users_by_pk" (optionalArgs ++ [ Argument.required "pk_columns" requiredArgs.pk_columns Hasura.InputObject.encodeUsers_pk_columns_input ]) object_ (identity >> Decode.nullable)