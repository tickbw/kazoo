-ifndef(CROSSBAR_TYPES_INCLUDED).

-type crossbar_status() :: 'success' | 'error' | 'fatal'.
-type crossbar_module_result() :: {crossbar_status(), wh_proplist()}
                                  | {crossbar_status(), wh_proplist(), string()}
                                  | {crossbar_status(), wh_proplist(), string(), integer()}.

-type path_token() :: ne_binary().
-type path_tokens() :: [path_token(),...] | [].

%% {handler_fun, {type, sub_type}} => {to_json, [{<<"application">>, <<"json">>}]}

%% {Type, SubType, Options}
-type content_type() :: {ne_binary(), ne_binary(), wh_proplist()}.

-type crossbar_content_handler() :: {atom(), [{ne_binary(), ne_binary()},...]}.
-type crossbar_content_handlers() :: [crossbar_content_handler(),...] | [].

-type http_method() :: 'GET'
                     | 'POST'
                     | 'PUT'
                     | 'DELETE'
                     | 'OPTIONS'
                     | 'HEAD'
                     | 'PATCH'.
-type http_methods() :: [http_method(),...] | [].

-type validator() :: 'required' | 'not_empty' | 'is_type'
                   | 'is_format' | 'numeric_min'
                   | 'numeric_max' | 'numeric_between'
                   | 'width'.
-type validator_rule() :: {validator(), list() | []}.
-type validator_rules() :: [validator_rule(),...] | [].

-type couch_doc_path() :: ne_binaries().
-type couch_schema() :: list({couch_doc_path(), validator_rules()}).

-define(CROSSBAR_TYPES_INCLUDED, 'true').
-endif.
