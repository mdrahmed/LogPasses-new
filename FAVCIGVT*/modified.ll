; ModuleID = 'clientOrPublisher.ll'
source_filename = "client_subscriber.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::allocator" = type { i8 }
%"class.mqtt::async_client" = type { %"class.mqtt::iasync_client", %"class.std::mutex", i8*, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, %"class.std::unique_ptr", %"class.mqtt::callback"*, %"class.std::function", %"class.std::function", %"class.std::function.2", %"class.std::function.5", %"class.std::function.9", %"class.std::shared_ptr.15", %"class.std::__cxx11::list", %"class.std::__cxx11::list.68", %"class.std::unique_ptr.73" }
%"class.mqtt::iasync_client" = type { i32 (...)** }
%"class.std::mutex" = type { %"class.std::__mutex_base" }
%"class.std::__mutex_base" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::unique_ptr" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { %struct.MQTTClient_persistence* }
%struct.MQTTClient_persistence = type { i8*, i32 (i8**, i8*, i8*, i8*)*, i32 (i8*)*, i32 (i8*, i8*, i32, i8**, i32*)*, i32 (i8*, i8*, i8**, i32*)*, i32 (i8*, i8*)*, i32 (i8*, i8***, i32*)*, i32 (i8*)*, i32 (i8*, i8*)* }
%"class.mqtt::callback" = type { i32 (...)** }
%"class.std::function" = type { %"class.std::_Function_base", void (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* }
%"class.std::_Function_base" = type { %"union.std::_Any_data", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::function.2" = type { %"class.std::_Function_base", void (%"union.std::_Any_data"*, %"class.mqtt::properties"*, i32*)* }
%"class.mqtt::properties" = type { %struct.MQTTProperties }
%struct.MQTTProperties = type { i32, i32, i32, %struct.MQTTProperty* }
%struct.MQTTProperty = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.anon }
%struct.anon = type { %struct.MQTTLenString, %struct.MQTTLenString }
%struct.MQTTLenString = type { i32, i8* }
%"class.std::function.5" = type { %"class.std::_Function_base", i1 (%"union.std::_Any_data"*, %"class.mqtt::connect_data"*)* }
%"class.mqtt::connect_data" = type { %struct.MQTTAsync_connectData, %"class.mqtt::buffer_ref", %"class.mqtt::buffer_ref" }
%struct.MQTTAsync_connectData = type { [4 x i8], i32, i8*, %struct.anon.8 }
%struct.anon.8 = type { i32, i8* }
%"class.mqtt::buffer_ref" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { %"class.std::__cxx11::basic_string"*, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { %"class.std::_Sp_counted_base"* }
%"class.std::_Sp_counted_base" = type { i32 (...)**, i32, i32 }
%"class.std::function.9" = type { %"class.std::_Function_base", void (%"union.std::_Any_data"*, %"class.std::shared_ptr.12"*)* }
%"class.std::shared_ptr.12" = type { %"class.std::__shared_ptr.13" }
%"class.std::__shared_ptr.13" = type { %"class.mqtt::message"*, %"class.std::__shared_count" }
%"class.mqtt::message" = type { %struct.MQTTAsync_message, %"class.mqtt::buffer_ref", %"class.mqtt::buffer_ref", %"class.mqtt::properties" }
%struct.MQTTAsync_message = type { [4 x i8], i32, i32, i8*, i32, i32, i32, i32, %struct.MQTTProperties }
%"class.std::shared_ptr.15" = type { %"class.std::__shared_ptr.16" }
%"class.std::__shared_ptr.16" = type { %"class.mqtt::token"*, %"class.std::__shared_count" }
%"class.mqtt::token" = type { i32 (...)**, %"class.std::mutex", %"class.std::condition_variable", i32, %"class.mqtt::iasync_client"*, i32, i32, %"class.std::__cxx11::basic_string", i32, %"class.std::shared_ptr.22", i8*, %"class.mqtt::iaction_listener"*, i64, i8, %"class.std::unique_ptr.33", %"class.std::unique_ptr.42", %"class.std::unique_ptr.56" }
%"class.std::condition_variable" = type { %union.pthread_cond_t }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon.18, %union.anon.20, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon.18 = type { i64 }
%union.anon.20 = type { i64 }
%"class.std::shared_ptr.22" = type { %"class.std::__shared_ptr.23" }
%"class.std::__shared_ptr.23" = type { %"class.mqtt::string_collection"*, %"class.std::__shared_count" }
%"class.mqtt::string_collection" = type { %"class.std::vector", %"class.std::vector.28" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* }
%"class.std::vector.28" = type { %"struct.std::_Vector_base.29" }
%"struct.std::_Vector_base.29" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" = type { i8**, i8**, i8** }
%"class.mqtt::iaction_listener" = type { i32 (...)** }
%"class.std::unique_ptr.33" = type { %"class.std::__uniq_ptr_impl.34" }
%"class.std::__uniq_ptr_impl.34" = type { %"class.std::tuple.35" }
%"class.std::tuple.35" = type { %"struct.std::_Tuple_impl.36" }
%"struct.std::_Tuple_impl.36" = type { %"struct.std::_Head_base.41" }
%"struct.std::_Head_base.41" = type { %"class.mqtt::connect_response"* }
%"class.mqtt::connect_response" = type <{ %"class.mqtt::server_response", %"class.std::__cxx11::basic_string", i32, i8, [3 x i8] }>
%"class.mqtt::server_response" = type { i32 (...)**, %"class.mqtt::properties" }
%"class.std::unique_ptr.42" = type { %"class.std::__uniq_ptr_impl.43" }
%"class.std::__uniq_ptr_impl.43" = type { %"class.std::tuple.44" }
%"class.std::tuple.44" = type { %"struct.std::_Tuple_impl.45" }
%"struct.std::_Tuple_impl.45" = type { %"struct.std::_Head_base.50" }
%"struct.std::_Head_base.50" = type { %"struct.mqtt::subscribe_response"* }
%"struct.mqtt::subscribe_response" = type { %"class.mqtt::server_response", %"class.std::vector.51" }
%"class.std::vector.51" = type { %"struct.std::_Vector_base.52" }
%"struct.std::_Vector_base.52" = type { %"struct.std::_Vector_base<mqtt::ReasonCode, std::allocator<mqtt::ReasonCode>>::_Vector_impl" }
%"struct.std::_Vector_base<mqtt::ReasonCode, std::allocator<mqtt::ReasonCode>>::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::unique_ptr.56" = type { %"class.std::__uniq_ptr_impl.57" }
%"class.std::__uniq_ptr_impl.57" = type { %"class.std::tuple.58" }
%"class.std::tuple.58" = type { %"struct.std::_Tuple_impl.59" }
%"struct.std::_Tuple_impl.59" = type { %"struct.std::_Head_base.64" }
%"struct.std::_Head_base.64" = type { %"class.mqtt::unsubscribe_response"* }
%"class.mqtt::unsubscribe_response" = type { %"class.mqtt::server_response", %"class.std::vector.51" }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<std::shared_ptr<mqtt::token>, std::allocator<std::shared_ptr<mqtt::token>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::shared_ptr<mqtt::token>, std::allocator<std::shared_ptr<mqtt::token>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%"class.std::__cxx11::list.68" = type { %"class.std::__cxx11::_List_base.69" }
%"class.std::__cxx11::_List_base.69" = type { %"struct.std::__cxx11::_List_base<std::shared_ptr<mqtt::delivery_token>, std::allocator<std::shared_ptr<mqtt::delivery_token>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::shared_ptr<mqtt::delivery_token>, std::allocator<std::shared_ptr<mqtt::delivery_token>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"class.std::unique_ptr.73" = type { %"class.std::__uniq_ptr_impl.74" }
%"class.std::__uniq_ptr_impl.74" = type { %"class.std::tuple.75" }
%"class.std::tuple.75" = type { %"struct.std::_Tuple_impl.76" }
%"struct.std::_Tuple_impl.76" = type { %"struct.std::_Head_base.81" }
%"struct.std::_Head_base.81" = type { %"class.mqtt::thread_queue"* }
%"class.mqtt::thread_queue" = type { %"class.std::mutex", %"class.std::condition_variable", %"class.std::condition_variable", i64, %"class.std::queue" }
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::shared_ptr<const mqtt::message>, std::allocator<std::shared_ptr<const mqtt::message>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::shared_ptr<const mqtt::message>, std::allocator<std::shared_ptr<const mqtt::message>>>::_Deque_impl" = type { %"class.std::shared_ptr.12"**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { %"class.std::shared_ptr.12"*, %"class.std::shared_ptr.12"*, %"class.std::shared_ptr.12"*, %"class.std::shared_ptr.12"** }
%class.mqtt_callback = type { %"class.mqtt::callback" }
%"class.mqtt::connect_options" = type { %struct.MQTTAsync_connectOptions, %"class.mqtt::will_options", %"class.mqtt::ssl_options", %"class.mqtt::buffer_ref", %"class.mqtt::buffer_ref", %"class.std::shared_ptr.15", %"class.std::shared_ptr.22", %"class.mqtt::properties", %"class.mqtt::name_value_collection", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%struct.MQTTAsync_connectOptions = type { [4 x i8], i32, i32, i32, i32, %struct.MQTTAsync_willOptions*, i8*, i8*, i32, i32, %struct.MQTTAsync_SSLOptions*, void (i8*, %struct.MQTTAsync_successData*)*, void (i8*, %struct.MQTTAsync_failureData*)*, i8*, i32, i8**, i32, i32, i32, i32, %struct.anon.89, i32, %struct.MQTTProperties*, %struct.MQTTProperties*, void (i8*, %struct.MQTTAsync_successData5*)*, void (i8*, %struct.MQTTAsync_failureData5*)*, %struct.MQTTAsync_nameValue*, i8*, i8* }
%struct.MQTTAsync_willOptions = type { [4 x i8], i32, i8*, i8*, i32, i32, %struct.anon.85 }
%struct.anon.85 = type { i32, i8* }
%struct.MQTTAsync_SSLOptions = type { [4 x i8], i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i32 (i8*, i64, i8*)*, i8*, i32 (i8*, i8*, i32, i8*, i32, i8*)*, i8*, i32, i8*, i32 }
%struct.MQTTAsync_successData = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { %struct.MQTTAsync_message, i8* }
%struct.MQTTAsync_failureData = type { i32, i32, i8* }
%struct.anon.89 = type { i32, i8* }
%struct.MQTTAsync_successData5 = type { [4 x i8], i32, i32, i32, %struct.MQTTProperties, %union.anon.90 }
%union.anon.90 = type { %struct.anon.92 }
%struct.anon.92 = type { %struct.MQTTAsync_message, i8* }
%struct.MQTTAsync_failureData5 = type { [4 x i8], i32, i32, i32, %struct.MQTTProperties, i32, i8*, i32 }
%struct.MQTTAsync_nameValue = type { i8*, i8* }
%"class.mqtt::will_options" = type { %struct.MQTTAsync_willOptions, %"class.mqtt::buffer_ref", %"class.mqtt::buffer_ref", %"class.mqtt::properties" }
%"class.mqtt::ssl_options" = type { %struct.MQTTAsync_SSLOptions, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::function", %"class.std::function.95", %"class.std::__cxx11::basic_string.97" }
%"class.std::function.95" = type { %"class.std::_Function_base", i32 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*, i8**, i64*, i8**, i64*)* }
%"class.std::__cxx11::basic_string.97" = type { %"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider", i64, %union.anon.101 }
%"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider" = type { i8* }
%union.anon.101 = type { i64, [8 x i8] }
%"class.mqtt::name_value_collection" = type { %"class.std::map", %"class.std::vector.106" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.std::vector.106" = type { %"struct.std::_Vector_base.107" }
%"struct.std::_Vector_base.107" = type { %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl" }
%"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl" = type { %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue* }
%"class.mqtt::subscribe_options" = type { %struct.MQTTSubscribe_options }
%struct.MQTTSubscribe_options = type { [4 x i8], i32, i8, i8, i8 }
%"struct.std::chrono::duration" = type { i64 }
%"class.mqtt::exception" = type { %"class.std::runtime_error", i32, i32, %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { i32 (...)** }
%"struct.std::__cow_string" = type { %union.anon.111 }
%union.anon.111 = type { i8* }
%"class.mqtt::iclient_persistence" = type { i32 (...)** }
%"class.std::__shared_ptr_access.17" = type { i8 }
%"struct.std::chrono::duration.115" = type { i64 }
%struct.timespec = type { i64, i64 }
%"class.std::__shared_ptr_access.14" = type { i8 }
%"class.std::shared_ptr.112" = type { %"class.std::__shared_ptr.113" }
%"class.std::__shared_ptr.113" = type { %"class.mqtt::delivery_token"*, %"class.std::__shared_count" }
%"class.mqtt::delivery_token" = type { %"class.mqtt::token", %"class.std::shared_ptr.12" }
%"class.std::__shared_ptr_access.114" = type { i8 }
%"class.std::__shared_ptr_access" = type { i8 }
%"class.std::allocator.108" = type { i8 }
%"class.__gnu_cxx::new_allocator.109" = type { i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }
%"class.std::allocator.102" = type { i8 }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.__gnu_cxx::new_allocator.103" = type { i8 }
%"class.std::allocator.98" = type { i8 }
%"class.__gnu_cxx::new_allocator.99" = type { i8 }

$_ZN13mqtt_callbackC1Ev = comdat any

$_ZN4mqtt15connect_options23set_keep_alive_intervalEi = comdat any

$_ZN4mqtt15connect_options17set_clean_sessionEb = comdat any

$_ZN4mqtt15connect_optionsD2Ev = comdat any

$_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv = comdat any

$_ZN4mqtt17subscribe_optionsC2Ev = comdat any

$_ZN4mqtt10propertiesC2Ev = comdat any

$_ZN4mqtt10propertiesD2Ev = comdat any

$_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_ = comdat any

$_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN13mqtt_callbackD1Ev = comdat any

$_ZN4mqtt8callbackC2Ev = comdat any

$_ZN13mqtt_callbackD0Ev = comdat any

$_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE = comdat any

$_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE = comdat any

$_ZN4mqtt8callbackD2Ev = comdat any

$_ZN4mqtt8callbackD0Ev = comdat any

$_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE = comdat any

$_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE = comdat any

$_ZTv0_n24_N13mqtt_callbackD0Ev = comdat any

$_ZTv0_n40_N13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv = comdat any

$_ZNK4mqtt7message9get_topicB5cxx11Ev = comdat any

$_ZNK4mqtt7message9to_stringB5cxx11Ev = comdat any

$_ZTv0_n48_N13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE = comdat any

$_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv = comdat any

$_ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv = comdat any

$_ZNK4mqtt10buffer_refIcEcvbEv = comdat any

$_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev = comdat any

$_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv = comdat any

$_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv = comdat any

$_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv = comdat any

$_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv = comdat any

$_ZNK4mqtt7message15get_payload_strB5cxx11Ev = comdat any

$_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv = comdat any

$_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv = comdat any

$_ZTv0_n56_N13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE = comdat any

$_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv = comdat any

$_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv = comdat any

$_ZN4mqtt6to_intEb = comdat any

$_ZN4mqtt21name_value_collectionD2Ev = comdat any

$_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev = comdat any

$_ZN4mqtt10buffer_refIcED2Ev = comdat any

$_ZN4mqtt11ssl_optionsD2Ev = comdat any

$_ZN4mqtt12will_optionsD2Ev = comdat any

$_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev = comdat any

$_ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_ = comdat any

$_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m = comdat any

$_ZNSaI19MQTTAsync_nameValueED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev = comdat any

$_ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv = comdat any

$_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev = comdat any

$_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev = comdat any

$_ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv = comdat any

$_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev = comdat any

$_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv = comdat any

$_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm = comdat any

$_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv = comdat any

$_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv = comdat any

$_ZNSt14pointer_traitsIPKhE10pointer_toERS0_ = comdat any

$_ZSt9addressofIKhEPT_RS1_ = comdat any

$_ZSt11__addressofIKhEPT_RS1_ = comdat any

$_ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm = comdat any

$_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm = comdat any

$_ZNSaIhED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIhED2Ev = comdat any

$_ZNSt14_Function_baseD2Ev = comdat any

$_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN13mqtt_callbackD2Ev = comdat any

$_ZTv0_n24_N13mqtt_callbackD1Ev = comdat any

$_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv = comdat any

$_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv = comdat any

$_ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv = comdat any

$_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv = comdat any

$_ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE = comdat any

$_ZNSt6chrono15duration_valuesIlE4zeroEv = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_ = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ = comdat any

$_ZTSN4mqtt9exceptionE = comdat any

$_ZTIN4mqtt9exceptionE = comdat any

$_ZTV13mqtt_callback = comdat any

$_ZTT13mqtt_callback = comdat any

$_ZTS13mqtt_callback = comdat any

$_ZTSN4mqtt8callbackE = comdat any

$_ZTIN4mqtt8callbackE = comdat any

$_ZTI13mqtt_callback = comdat any

$_ZTVN4mqtt8callbackE = comdat any

$_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11 = comdat any

$_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11 = comdat any

$_ZZNK4mqtt7message15get_payload_strB5cxx11EvE9EMPTY_STRB5cxx11 = comdat any

$_ZGVZNK4mqtt7message15get_payload_strB5cxx11EvE9EMPTY_STRB5cxx11 = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN4mqttL11VERSION_STRB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"Paho MQTT C++ (mqttpp) v. 1.2\00", align 1
@_ZN4mqttL9COPYRIGHTB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Copyright (c) 2013-2020 Frank Pagliughi\00", align 1
@_ZL14SERVER_ADDRESSB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"tcp://localhost:1883\00", align 1
@_ZL9CLIENT_IDB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"mqtt_cpp_async_subscriber\00", align 1
@_ZL5TOPICB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"my/topic\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTSN4mqtt9exceptionE = linkonce_odr dso_local constant [18 x i8] c"N4mqtt9exceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant i8*
@_ZTIN4mqtt9exceptionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @_ZTSN4mqtt9exceptionE, i32 0, i32 0), i8* bitcast (i8** @_ZTISt13runtime_error to i8*) }, comdat, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"Connecting to MQTT server: '\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"'...\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Subscribing to topic: \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@_ZTV13mqtt_callback = linkonce_odr dso_local unnamed_addr constant { [14 x i8*] } { [14 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTI13mqtt_callback to i8*), i8* bitcast (void (%class.mqtt_callback*)* @_ZN13mqtt_callbackD1Ev to i8*), i8* bitcast (void (%class.mqtt_callback*)* @_ZN13mqtt_callbackD0Ev to i8*), i8* bitcast (void (%"class.mqtt::callback"*, %"class.std::__cxx11::basic_string"*)* @_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i8*), i8* bitcast (void (%class.mqtt_callback*, %"class.std::__cxx11::basic_string"*)* @_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i8*), i8* bitcast (void (%class.mqtt_callback*, %"class.std::shared_ptr.12"*)* @_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE to i8*), i8* bitcast (void (%class.mqtt_callback*, %"class.std::shared_ptr.112"*)* @_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE to i8*)] }, comdat, align 8
@_ZTT13mqtt_callback = linkonce_odr dso_local unnamed_addr constant [2 x i8*] [i8* bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTV13mqtt_callback, i32 0, inrange i32 0, i32 8) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTV13mqtt_callback, i32 0, inrange i32 0, i32 8) to i8*)], comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global i8*
@_ZTS13mqtt_callback = linkonce_odr dso_local constant [16 x i8] c"13mqtt_callback\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTSN4mqtt8callbackE = linkonce_odr dso_local constant [17 x i8] c"N4mqtt8callbackE\00", comdat, align 1
@_ZTIN4mqtt8callbackE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTSN4mqtt8callbackE, i32 0, i32 0) }, comdat, align 8
@_ZTI13mqtt_callback = linkonce_odr dso_local constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_ZTS13mqtt_callback, i32 0, i32 0), i32 0, i32 1, i8* bitcast ({ i8*, i8* }* @_ZTIN4mqtt8callbackE to i8*), i64 -16381 }, comdat, align 8
@_ZTVN4mqtt8callbackE = linkonce_odr dso_local unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN4mqtt8callbackE to i8*), i8* bitcast (void (%"class.mqtt::callback"*)* @_ZN4mqtt8callbackD2Ev to i8*), i8* bitcast (void (%"class.mqtt::callback"*)* @_ZN4mqtt8callbackD0Ev to i8*), i8* bitcast (void (%"class.mqtt::callback"*, %"class.std::__cxx11::basic_string"*)* @_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i8*), i8* bitcast (void (%"class.mqtt::callback"*, %"class.std::__cxx11::basic_string"*)* @_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i8*), i8* bitcast (void (%"class.mqtt::callback"*, %"class.std::shared_ptr.12"*)* @_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE to i8*), i8* bitcast (void (%"class.mqtt::callback"*, %"class.std::shared_ptr.112"*)* @_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE to i8*)] }, comdat, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"\0AConnection lost\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"cause: \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Topic: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Message content: \00", align 1
@_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11 = linkonce_odr dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, comdat, align 8
@_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11 = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZNK4mqtt7message15get_payload_strB5cxx11EvE9EMPTY_STRB5cxx11 = linkonce_odr dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, comdat, align 8
@_ZGVZNK4mqtt7message15get_payload_strB5cxx11EvE9EMPTY_STRB5cxx11 = linkonce_odr dso_local global i64 0, comdat, align 8
@.str.20 = private unnamed_addr constant [31 x i8] c"\0ADelivery complete for token: \00", align 1
@_ZZL18__gthread_active_pvE20__gthread_active_ptr = internal constant i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_client_subscriber.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::allocator", align 1
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZN4mqttL11VERSION_STRB5cxx11E, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1)
          to label %4 unwind label %6

4:                                                ; preds = %0
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  %5 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN4mqttL11VERSION_STRB5cxx11E to i8*), i8* @__dso_handle) #3
  ret void

6:                                                ; preds = %0
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %2, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %3, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  br label %10

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::allocator", align 1
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZN4mqttL9COPYRIGHTB5cxx11E, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1)
          to label %4 unwind label %6

4:                                                ; preds = %0
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  %5 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN4mqttL9COPYRIGHTB5cxx11E to i8*), i8* @__dso_handle) #3
  ret void

6:                                                ; preds = %0
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %2, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %3, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  br label %10

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.4() #0 section ".text.startup" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::allocator", align 1
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL14SERVER_ADDRESSB5cxx11, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1)
          to label %4 unwind label %6

4:                                                ; preds = %0
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  %5 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZL14SERVER_ADDRESSB5cxx11 to i8*), i8* @__dso_handle) #3
  ret void

6:                                                ; preds = %0
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %2, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %3, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  br label %10

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.6() #0 section ".text.startup" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::allocator", align 1
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL9CLIENT_IDB5cxx11, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1)
          to label %4 unwind label %6

4:                                                ; preds = %0
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  %5 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZL9CLIENT_IDB5cxx11 to i8*), i8* @__dso_handle) #3
  ret void

6:                                                ; preds = %0
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %2, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %3, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  br label %10

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.8() #0 section ".text.startup" personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::allocator", align 1
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL5TOPICB5cxx11, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1)
          to label %4 unwind label %6

4:                                                ; preds = %0
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  %5 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZL5TOPICB5cxx11 to i8*), i8* @__dso_handle) #3
  ret void

6:                                                ; preds = %0
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %2, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %3, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #3
  br label %10

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %"class.mqtt::async_client", align 8
  %7 = alloca %class.mqtt_callback, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.mqtt::connect_options", align 8
  %11 = alloca %"class.std::shared_ptr.15", align 8
  %12 = alloca %"class.mqtt::connect_options", align 8
  %13 = alloca %"class.std::shared_ptr.15", align 8
  %14 = alloca %"class.mqtt::subscribe_options", align 4
  %15 = alloca %"class.mqtt::properties", align 8
  %16 = alloca %"struct.std::chrono::duration", align 8
  %17 = alloca i32, align 4
  %18 = alloca %"class.std::shared_ptr.15", align 8
  %19 = alloca %"class.mqtt::exception"*, align 8
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @_ZN4mqtt12async_clientC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PNS_19iclient_persistenceE(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL14SERVER_ADDRESSB5cxx11, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL9CLIENT_IDB5cxx11, %"class.mqtt::iclient_persistence"* noundef null)
  call void @_ZN13mqtt_callbackC1Ev(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %7) #3
  %21 = bitcast %class.mqtt_callback* %7 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr i8, i8* %22, i64 -64
  %24 = bitcast i8* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = bitcast %class.mqtt_callback* %7 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 %25
  %28 = bitcast i8* %27 to %"class.mqtt::callback"*
  invoke void @_ZN4mqtt12async_client12set_callbackERNS_8callbackE(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6, %"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %28)
          to label %29 unwind label %80

29:                                               ; preds = %2
  invoke void @_ZN4mqtt15connect_optionsC1Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10)
          to label %30 unwind label %80

30:                                               ; preds = %29
  invoke void @_ZN4mqtt15connect_options23set_keep_alive_intervalEi(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10, i32 noundef 20)
          to label %31 unwind label %84

31:                                               ; preds = %30
  invoke void @_ZN4mqtt15connect_options17set_clean_sessionEb(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10, i1 noundef zeroext true)
          to label %32 unwind label %84

32:                                               ; preds = %31
  %33 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
          to label %34 unwind label %88

34:                                               ; preds = %32
  %35 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %33, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL14SERVER_ADDRESSB5cxx11)
          to label %36 unwind label %88

36:                                               ; preds = %34
  %37 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
          to label %38 unwind label %88

38:                                               ; preds = %36
  %39 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %37, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %40 unwind label %88

40:                                               ; preds = %38
  invoke void @_ZN4mqtt15connect_optionsC1ERKS0_(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %12, %"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10)
          to label %41 unwind label %88

41:                                               ; preds = %40
  invoke void @_ZN4mqtt12async_client7connectENS_15connect_optionsE(%"class.std::shared_ptr.15"* sret(%"class.std::shared_ptr.15") align 8 %11, %"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6, %"class.mqtt::connect_options"* noundef %12)
          to label %42 unwind label %92

42:                                               ; preds = %41
  call void @_ZN4mqtt15connect_optionsD2Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %12) #3
  %43 = bitcast %"class.std::shared_ptr.15"* %11 to %"class.std::__shared_ptr_access.17"*
  %44 = call noundef %"class.mqtt::token"* @_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.17"* noundef nonnull align 1 dereferenceable(1) %43) #3
  %45 = bitcast %"class.mqtt::token"* %44 to void (%"class.mqtt::token"*)***
  %46 = load void (%"class.mqtt::token"*)**, void (%"class.mqtt::token"*)*** %45, align 8
  %47 = getelementptr inbounds void (%"class.mqtt::token"*)*, void (%"class.mqtt::token"*)** %46, i64 11
  %48 = load void (%"class.mqtt::token"*)*, void (%"class.mqtt::token"*)** %47, align 8
  invoke void %48(%"class.mqtt::token"* noundef nonnull align 8 dereferenceable(232) %44)
          to label %49 unwind label %96

49:                                               ; preds = %42
  %50 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
          to label %51 unwind label %96

51:                                               ; preds = %49
  %52 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %50, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %53 unwind label %96

53:                                               ; preds = %51
  %54 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
          to label %55 unwind label %96

55:                                               ; preds = %53
  %56 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %54, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL5TOPICB5cxx11)
          to label %57 unwind label %96

57:                                               ; preds = %55
  %58 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %56, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
          to label %59 unwind label %96

59:                                               ; preds = %57
  %60 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %58, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %61 unwind label %96

61:                                               ; preds = %59
  invoke void @_ZN4mqtt17subscribe_optionsC2Ev(%"class.mqtt::subscribe_options"* noundef nonnull align 4 dereferenceable(12) %14)
          to label %62 unwind label %96

62:                                               ; preds = %61
  invoke void @_ZN4mqtt10propertiesC2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %15)
          to label %63 unwind label %96

63:                                               ; preds = %62
  invoke void @_ZN4mqtt12async_client9subscribeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS_17subscribe_optionsERKNS_10propertiesE(%"class.std::shared_ptr.15"* sret(%"class.std::shared_ptr.15") align 8 %13, %"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL5TOPICB5cxx11, i32 noundef 0, %"class.mqtt::subscribe_options"* noundef nonnull align 4 dereferenceable(12) %14, %"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %15)
          to label %64 unwind label %100

64:                                               ; preds = %63
  call void @_ZN4mqtt10propertiesD2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %15) #3
  %65 = bitcast %"class.std::shared_ptr.15"* %13 to %"class.std::__shared_ptr_access.17"*
  %66 = call noundef %"class.mqtt::token"* @_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.17"* noundef nonnull align 1 dereferenceable(1) %65) #3
  %67 = bitcast %"class.mqtt::token"* %66 to void (%"class.mqtt::token"*)***
  %68 = load void (%"class.mqtt::token"*)**, void (%"class.mqtt::token"*)*** %67, align 8
  %69 = getelementptr inbounds void (%"class.mqtt::token"*)*, void (%"class.mqtt::token"*)** %68, i64 11
  %70 = load void (%"class.mqtt::token"*)*, void (%"class.mqtt::token"*)** %69, align 8
  invoke void %70(%"class.mqtt::token"* noundef nonnull align 8 dereferenceable(232) %66)
          to label %71 unwind label %104

71:                                               ; preds = %64
  %72 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
          to label %73 unwind label %104

73:                                               ; preds = %71
  %74 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %72, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %75 unwind label %104

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %79, %75
  br label %77

77:                                               ; preds = %76
  store i32 1, i32* %17, align 4
  invoke void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %16, i32* noundef nonnull align 4 dereferenceable(4) %17)
          to label %78 unwind label %104

78:                                               ; preds = %77
  invoke void @_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %16)
          to label %79 unwind label %104

79:                                               ; preds = %78
  br label %76, !llvm.loop !6

80:                                               ; preds = %29, %2
  %81 = landingpad { i8*, i32 }
          cleanup
  %82 = extractvalue { i8*, i32 } %81, 0
  store i8* %82, i8** %8, align 8
  %83 = extractvalue { i8*, i32 } %81, 1
  store i32 %83, i32* %9, align 4
  br label %140

84:                                               ; preds = %129, %31, %30
  %85 = landingpad { i8*, i32 }
          cleanup
  %86 = extractvalue { i8*, i32 } %85, 0
  store i8* %86, i8** %8, align 8
  %87 = extractvalue { i8*, i32 } %85, 1
  store i32 %87, i32* %9, align 4
  br label %139

88:                                               ; preds = %40, %38, %36, %34, %32
  %89 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %90 = extractvalue { i8*, i32 } %89, 0
  store i8* %90, i8** %8, align 8
  %91 = extractvalue { i8*, i32 } %89, 1
  store i32 %91, i32* %9, align 4
  br label %109

92:                                               ; preds = %41
  %93 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %94 = extractvalue { i8*, i32 } %93, 0
  store i8* %94, i8** %8, align 8
  %95 = extractvalue { i8*, i32 } %93, 1
  store i32 %95, i32* %9, align 4
  call void @_ZN4mqtt15connect_optionsD2Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %12) #3
  br label %109

96:                                               ; preds = %62, %61, %59, %57, %55, %53, %51, %49, %42
  %97 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %98 = extractvalue { i8*, i32 } %97, 0
  store i8* %98, i8** %8, align 8
  %99 = extractvalue { i8*, i32 } %97, 1
  store i32 %99, i32* %9, align 4
  br label %108

100:                                              ; preds = %63
  %101 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %102 = extractvalue { i8*, i32 } %101, 0
  store i8* %102, i8** %8, align 8
  %103 = extractvalue { i8*, i32 } %101, 1
  store i32 %103, i32* %9, align 4
  call void @_ZN4mqtt10propertiesD2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %15) #3
  br label %108

104:                                              ; preds = %78, %77, %73, %71, %64
  %105 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %106 = extractvalue { i8*, i32 } %105, 0
  store i8* %106, i8** %8, align 8
  %107 = extractvalue { i8*, i32 } %105, 1
  store i32 %107, i32* %9, align 4
  call void @_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev(%"class.std::shared_ptr.15"* noundef nonnull align 8 dereferenceable(16) %13) #3
  br label %108

108:                                              ; preds = %104, %100, %96
  call void @_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev(%"class.std::shared_ptr.15"* noundef nonnull align 8 dereferenceable(16) %11) #3
  br label %109

109:                                              ; preds = %108, %92, %88
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @llvm.eh.typeid.for(i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)) #3
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %139

113:                                              ; preds = %109
  %114 = load i8*, i8** %8, align 8
  %115 = call i8* @__cxa_begin_catch(i8* %114) #3
  %116 = bitcast i8* %115 to %"class.mqtt::exception"*
  store %"class.mqtt::exception"* %116, %"class.mqtt::exception"** %19, align 8
  %117 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
          to label %118 unwind label %130

118:                                              ; preds = %113
  %119 = load %"class.mqtt::exception"*, %"class.mqtt::exception"** %19, align 8
  %120 = bitcast %"class.mqtt::exception"* %119 to %"class.std::runtime_error"*
  %121 = bitcast %"class.std::runtime_error"* %120 to i8* (%"class.std::runtime_error"*)***
  %122 = load i8* (%"class.std::runtime_error"*)**, i8* (%"class.std::runtime_error"*)*** %121, align 8
  %123 = getelementptr inbounds i8* (%"class.std::runtime_error"*)*, i8* (%"class.std::runtime_error"*)** %122, i64 2
  %124 = load i8* (%"class.std::runtime_error"*)*, i8* (%"class.std::runtime_error"*)** %123, align 8
  %125 = call noundef i8* %124(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16) %120) #3
  %126 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %117, i8* noundef %125)
          to label %127 unwind label %130

127:                                              ; preds = %118
  %128 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %126, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %129 unwind label %130

129:                                              ; preds = %127
  store i32 1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  invoke void @__cxa_end_catch()
          to label %134 unwind label %84

130:                                              ; preds = %127, %118, %113
  %131 = landingpad { i8*, i32 }
          cleanup
  %132 = extractvalue { i8*, i32 } %131, 0
  store i8* %132, i8** %8, align 8
  %133 = extractvalue { i8*, i32 } %131, 1
  store i32 %133, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %135 unwind label %146

134:                                              ; preds = %129
  br label %137

135:                                              ; preds = %130
  br label %139

136:                                              ; No predecessors!
  store i32 0, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %137

137:                                              ; preds = %136, %134
  call void @_ZN4mqtt15connect_optionsD2Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10) #3
  call void @_ZN13mqtt_callbackD1Ev(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %7) #3
  call void @_ZN4mqtt12async_clientD1Ev(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6) #3
  %138 = load i32, i32* %3, align 4
  ret i32 %138

139:                                              ; preds = %135, %109, %84
  call void @_ZN4mqtt15connect_optionsD2Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10) #3
  br label %140

140:                                              ; preds = %139, %80
  call void @_ZN13mqtt_callbackD1Ev(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %7) #3
  call void @_ZN4mqtt12async_clientD1Ev(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6) #3
  br label %141

141:                                              ; preds = %140
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = insertvalue { i8*, i32 } undef, i8* %142, 0
  %145 = insertvalue { i8*, i32 } %144, i32 %143, 1
  resume { i8*, i32 } %145

146:                                              ; preds = %130
  %147 = landingpad { i8*, i32 }
          catch i8* null
  %148 = extractvalue { i8*, i32 } %147, 0
  call void @__clang_call_terminate(i8* %148) #15
  unreachable
}

declare void @_ZN4mqtt12async_clientC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PNS_19iclient_persistenceE(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.mqtt::iclient_persistence"* noundef) unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN13mqtt_callbackC1Ev(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.mqtt_callback*, align 8
  store %class.mqtt_callback* %0, %class.mqtt_callback** %2, align 8
  %3 = load %class.mqtt_callback*, %class.mqtt_callback** %2, align 8
  %4 = bitcast %class.mqtt_callback* %3 to %"class.mqtt::callback"*
  call void @_ZN4mqtt8callbackC2Ev(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %4) #3
  %5 = bitcast %class.mqtt_callback* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTV13mqtt_callback, i32 0, inrange i32 0, i32 8) to i32 (...)**), i32 (...)*** %5, align 8
  %6 = bitcast %class.mqtt_callback* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTV13mqtt_callback, i32 0, inrange i32 0, i32 8) to i32 (...)**), i32 (...)*** %6, align 8
  ret void
}

declare void @_ZN4mqtt12async_client12set_callbackERNS_8callbackE(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376), %"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN4mqtt15connect_optionsC1Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt15connect_options23set_keep_alive_intervalEi(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %0, i32 noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.mqtt::connect_options"*, align 8
  %4 = alloca i32, align 4
  store %"class.mqtt::connect_options"* %0, %"class.mqtt::connect_options"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.mqtt::connect_options"*, %"class.mqtt::connect_options"** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %5, i32 0, i32 0
  %8 = getelementptr inbounds %struct.MQTTAsync_connectOptions, %struct.MQTTAsync_connectOptions* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt15connect_options17set_clean_sessionEb(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %0, i1 noundef zeroext %1) #7 comdat align 2 {
  %3 = alloca %"class.mqtt::connect_options"*, align 8
  %4 = alloca i8, align 1
  store %"class.mqtt::connect_options"* %0, %"class.mqtt::connect_options"** %3, align 8
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  %6 = load %"class.mqtt::connect_options"*, %"class.mqtt::connect_options"** %3, align 8
  %7 = load i8, i8* %4, align 1
  %8 = trunc i8 %7 to i1
  %9 = call noundef i32 @_ZN4mqtt6to_intEb(i1 noundef zeroext %8)
  %10 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %6, i32 0, i32 0
  %11 = getelementptr inbounds %struct.MQTTAsync_connectOptions, %struct.MQTTAsync_connectOptions* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #1

declare void @_ZN4mqtt12async_client7connectENS_15connect_optionsE(%"class.std::shared_ptr.15"* sret(%"class.std::shared_ptr.15") align 8, %"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376), %"class.mqtt::connect_options"* noundef) unnamed_addr #1

declare void @_ZN4mqtt15connect_optionsC1ERKS0_(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944), %"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944)) unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt15connect_optionsD2Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::connect_options"*, align 8
  store %"class.mqtt::connect_options"* %0, %"class.mqtt::connect_options"** %2, align 8
  %3 = load %"class.mqtt::connect_options"*, %"class.mqtt::connect_options"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %3, i32 0, i32 10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #3
  %5 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %3, i32 0, i32 9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #3
  %6 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %3, i32 0, i32 8
  call void @_ZN4mqtt21name_value_collectionD2Ev(%"class.mqtt::name_value_collection"* noundef nonnull align 8 dereferenceable(72) %6) #3
  %7 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %3, i32 0, i32 7
  call void @_ZN4mqtt10propertiesD2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %7) #3
  %8 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %3, i32 0, i32 6
  call void @_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev(%"class.std::shared_ptr.22"* noundef nonnull align 8 dereferenceable(16) %8) #3
  %9 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %3, i32 0, i32 5
  call void @_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev(%"class.std::shared_ptr.15"* noundef nonnull align 8 dereferenceable(16) %9) #3
  %10 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %3, i32 0, i32 4
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %10) #3
  %11 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %3, i32 0, i32 3
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %11) #3
  %12 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %3, i32 0, i32 2
  call void @_ZN4mqtt11ssl_optionsD2Ev(%"class.mqtt::ssl_options"* noundef nonnull align 8 dereferenceable(416) %12) #3
  %13 = getelementptr inbounds %"class.mqtt::connect_options", %"class.mqtt::connect_options"* %3, i32 0, i32 1
  call void @_ZN4mqtt12will_optionsD2Ev(%"class.mqtt::will_options"* noundef nonnull align 8 dereferenceable(104) %13) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::token"* @_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.17"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access.17"*, align 8
  store %"class.std::__shared_ptr_access.17"* %0, %"class.std::__shared_ptr_access.17"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access.17"*, %"class.std::__shared_ptr_access.17"** %2, align 8
  %4 = call noundef %"class.mqtt::token"* @_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access.17"* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret %"class.mqtt::token"* %4
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #1

declare void @_ZN4mqtt12async_client9subscribeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS_17subscribe_optionsERKNS_10propertiesE(%"class.std::shared_ptr.15"* sret(%"class.std::shared_ptr.15") align 8, %"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i32 noundef, %"class.mqtt::subscribe_options"* noundef nonnull align 4 dereferenceable(12), %"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt17subscribe_optionsC2Ev(%"class.mqtt::subscribe_options"* noundef nonnull align 4 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::subscribe_options"*, align 8
  store %"class.mqtt::subscribe_options"* %0, %"class.mqtt::subscribe_options"** %2, align 8
  %3 = load %"class.mqtt::subscribe_options"*, %"class.mqtt::subscribe_options"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::subscribe_options", %"class.mqtt::subscribe_options"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.MQTTSubscribe_options, %struct.MQTTSubscribe_options* %4, i32 0, i32 0
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  store i8 77, i8* %6, align 1
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 81, i8* %7, align 1
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 83, i8* %8, align 1
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 79, i8* %9, align 1
  %10 = getelementptr inbounds %struct.MQTTSubscribe_options, %struct.MQTTSubscribe_options* %4, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.MQTTSubscribe_options, %struct.MQTTSubscribe_options* %4, i32 0, i32 2
  store i8 0, i8* %11, align 4
  %12 = getelementptr inbounds %struct.MQTTSubscribe_options, %struct.MQTTSubscribe_options* %4, i32 0, i32 3
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.MQTTSubscribe_options, %struct.MQTTSubscribe_options* %4, i32 0, i32 4
  store i8 0, i8* %13, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt10propertiesC2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::properties"*, align 8
  store %"class.mqtt::properties"* %0, %"class.mqtt::properties"** %2, align 8
  %3 = load %"class.mqtt::properties"*, %"class.mqtt::properties"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::properties", %"class.mqtt::properties"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"class.mqtt::properties", %"class.mqtt::properties"* %3, i32 0, i32 0
  %6 = bitcast %struct.MQTTProperties* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt10propertiesD2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.mqtt::properties"*, align 8
  store %"class.mqtt::properties"* %0, %"class.mqtt::properties"** %2, align 8
  %3 = load %"class.mqtt::properties"*, %"class.mqtt::properties"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::properties", %"class.mqtt::properties"* %3, i32 0, i32 0
  invoke void @MQTTProperties_free(%struct.MQTTProperties* noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #15
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %0) #7 comdat {
  %2 = alloca %"struct.std::chrono::duration"*, align 8
  %3 = alloca %"struct.std::chrono::duration", align 8
  %4 = alloca %"struct.std::chrono::duration", align 8
  %5 = alloca %"struct.std::chrono::duration.115", align 8
  %6 = alloca %"struct.std::chrono::duration", align 8
  %7 = alloca %struct.timespec, align 8
  store %"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"** %2, align 8
  %8 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %2, align 8
  %9 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %2, align 8
  %10 = call i64 @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv() #3
  %11 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %3, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = call noundef zeroext i1 @_ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %8, %"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %37

14:                                               ; preds = %1
  %15 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %2, align 8
  %16 = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %15)
  %17 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %4, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %2, align 8
  %19 = call i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %18, %"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %4)
  %20 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %6, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %6)
  %22 = getelementptr inbounds %"struct.std::chrono::duration.115", %"struct.std::chrono::duration.115"* %5, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %24 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %4)
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %26 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration.115"* noundef nonnull align 8 dereferenceable(8) %5)
  store i64 %26, i64* %25, align 8
  br label %27

27:                                               ; preds = %36, %14
  %28 = call i32 @nanosleep(%struct.timespec* noundef %7, %struct.timespec* noundef %7)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32* @__errno_location() #16
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  br label %27, !llvm.loop !8

37:                                               ; preds = %34, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.std::chrono::duration"*, align 8
  %4 = alloca i32*, align 8
  store %"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %5, i32 0, i32 0
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev(%"class.std::shared_ptr.15"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::shared_ptr.15"*, align 8
  store %"class.std::shared_ptr.15"* %0, %"class.std::shared_ptr.15"** %2, align 8
  %3 = load %"class.std::shared_ptr.15"*, %"class.std::shared_ptr.15"** %2, align 8
  %4 = bitcast %"class.std::shared_ptr.15"* %3 to %"class.std::__shared_ptr.16"*
  call void @_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.16"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.eh.typeid.for(i8*) #8

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #9 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #15
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN13mqtt_callbackD1Ev(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.mqtt_callback*, align 8
  store %class.mqtt_callback* %0, %class.mqtt_callback** %2, align 8
  %3 = load %class.mqtt_callback*, %class.mqtt_callback** %2, align 8
  call void @_ZN13mqtt_callbackD2Ev(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %3, i8** noundef getelementptr inbounds ([2 x i8*], [2 x i8*]* @_ZTT13mqtt_callback, i64 0, i64 0)) #3
  %4 = bitcast %class.mqtt_callback* %3 to %"class.mqtt::callback"*
  call void @_ZN4mqtt8callbackD2Ev(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4mqtt12async_clientD1Ev(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt8callbackC2Ev(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::callback"*, align 8
  store %"class.mqtt::callback"* %0, %"class.mqtt::callback"** %2, align 8
  %3 = load %"class.mqtt::callback"*, %"class.mqtt::callback"** %2, align 8
  %4 = bitcast %"class.mqtt::callback"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTVN4mqtt8callbackE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN13mqtt_callbackD0Ev(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.mqtt_callback*, align 8
  store %class.mqtt_callback* %0, %class.mqtt_callback** %2, align 8
  %3 = load %class.mqtt_callback*, %class.mqtt_callback** %2, align 8
  call void @_ZN13mqtt_callbackD1Ev(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %3) #3
  %4 = bitcast %class.mqtt_callback* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"class.mqtt::callback"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.mqtt::callback"* %0, %"class.mqtt::callback"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %"class.mqtt::callback"*, %"class.mqtt::callback"** %3, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %class.mqtt_callback*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %class.mqtt_callback* %0, %class.mqtt_callback** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %class.mqtt_callback*, %class.mqtt_callback** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %7 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %6, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %9 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8) #3
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %12 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %13 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %11, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12)
  %14 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %13, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %15

15:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::shared_ptr.12"* noundef %1) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.mqtt_callback*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %class.mqtt_callback* %0, %class.mqtt_callback** %3, align 8
  %7 = load %class.mqtt_callback*, %class.mqtt_callback** %3, align 8
  %8 = bitcast %"class.std::shared_ptr.12"* %1 to %"class.std::__shared_ptr_access.14"*
  %9 = call noundef %"class.mqtt::message"* @_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.14"* noundef nonnull align 1 dereferenceable(1) %8) #3
  %10 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNK4mqtt7message9get_topicB5cxx11Ev(%"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120) %9)
  %11 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #3
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* noundef %11)
  %13 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %14 = bitcast %"class.std::shared_ptr.12"* %1 to %"class.std::__shared_ptr_access.14"*
  %15 = call noundef %"class.mqtt::message"* @_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.14"* noundef nonnull align 1 dereferenceable(1) %14) #3
  call void @_ZNK4mqtt7message9to_stringB5cxx11Ev(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %4, %"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120) %15)
  %16 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %13, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4)
          to label %17 unwind label %20

17:                                               ; preds = %2
  %18 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %16, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %19 unwind label %20

19:                                               ; preds = %17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #3
  ret void

20:                                               ; preds = %17, %2
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %5, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %6, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #3
  br label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::shared_ptr.112"* noundef %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %class.mqtt_callback*, align 8
  store %class.mqtt_callback* %0, %class.mqtt_callback** %3, align 8
  %4 = load %class.mqtt_callback*, %class.mqtt_callback** %3, align 8
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %6 = bitcast %"class.std::shared_ptr.112"* %1 to %"class.std::__shared_ptr.113"*
  %7 = call noundef zeroext i1 @_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv(%"class.std::__shared_ptr.113"* noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = bitcast %"class.std::shared_ptr.112"* %1 to %"class.std::__shared_ptr_access.114"*
  %10 = call noundef %"class.mqtt::delivery_token"* @_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.114"* noundef nonnull align 1 dereferenceable(1) %9) #3
  %11 = bitcast %"class.mqtt::delivery_token"* %10 to %"class.mqtt::token"*
  %12 = bitcast %"class.mqtt::token"* %11 to i32 (%"class.mqtt::token"*)***
  %13 = load i32 (%"class.mqtt::token"*)**, i32 (%"class.mqtt::token"*)*** %12, align 8
  %14 = getelementptr inbounds i32 (%"class.mqtt::token"*)*, i32 (%"class.mqtt::token"*)** %13, i64 4
  %15 = load i32 (%"class.mqtt::token"*)*, i32 (%"class.mqtt::token"*)** %14, align 8
  %16 = call noundef i32 %15(%"class.mqtt::token"* noundef nonnull align 8 dereferenceable(232) %11)
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %8
  %19 = phi i32 [ %16, %8 ], [ -1, %17 ]
  %20 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %19)
  %21 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %20, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt8callbackD2Ev(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::callback"*, align 8
  store %"class.mqtt::callback"* %0, %"class.mqtt::callback"** %2, align 8
  %3 = load %"class.mqtt::callback"*, %"class.mqtt::callback"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt8callbackD0Ev(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::callback"*, align 8
  store %"class.mqtt::callback"* %0, %"class.mqtt::callback"** %2, align 8
  %3 = load %"class.mqtt::callback"*, %"class.mqtt::callback"** %2, align 8
  call void @_ZN4mqtt8callbackD2Ev(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %3) #3
  %4 = bitcast %"class.mqtt::callback"* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"class.mqtt::callback"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.mqtt::callback"* %0, %"class.mqtt::callback"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %"class.mqtt::callback"*, %"class.mqtt::callback"** %3, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::shared_ptr.12"* noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"class.mqtt::callback"*, align 8
  store %"class.mqtt::callback"* %0, %"class.mqtt::callback"** %3, align 8
  %4 = load %"class.mqtt::callback"*, %"class.mqtt::callback"** %3, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::shared_ptr.112"* noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"class.mqtt::callback"*, align 8
  store %"class.mqtt::callback"* %0, %"class.mqtt::callback"** %3, align 8
  %4 = load %"class.mqtt::callback"*, %"class.mqtt::callback"** %3, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N13mqtt_callbackD0Ev(%class.mqtt_callback* noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.mqtt_callback*, align 8
  store %class.mqtt_callback* %0, %class.mqtt_callback** %2, align 8
  %3 = load %class.mqtt_callback*, %class.mqtt_callback** %2, align 8
  %4 = bitcast %class.mqtt_callback* %3 to i8*
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i8, i8* %4, i64 %9
  %11 = bitcast i8* %10 to %class.mqtt_callback*
  tail call void @_ZN13mqtt_callbackD0Ev(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %11) #3
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n40_N13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.mqtt_callback* noundef %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #11 comdat align 2 {
  %3 = alloca %class.mqtt_callback*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %class.mqtt_callback* %0, %class.mqtt_callback** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %class.mqtt_callback*, %class.mqtt_callback** %3, align 8
  %6 = bitcast %class.mqtt_callback* %5 to i8*
  %7 = bitcast i8* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 -40
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i8, i8* %6, i64 %11
  %13 = bitcast i8* %12 to %class.mqtt_callback*
  %14 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  tail call void @_ZN13mqtt_callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %13, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14)
  ret void
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::message"* @_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.14"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access.14"*, align 8
  store %"class.std::__shared_ptr_access.14"* %0, %"class.std::__shared_ptr_access.14"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access.14"*, %"class.std::__shared_ptr_access.14"** %2, align 8
  %4 = call noundef %"class.mqtt::message"* @_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access.14"* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret %"class.mqtt::message"* %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNK4mqtt7message9get_topicB5cxx11Ev(%"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120) %0) #7 comdat align 2 {
  %2 = alloca %"class.mqtt::message"*, align 8
  store %"class.mqtt::message"* %0, %"class.mqtt::message"** %2, align 8
  %3 = load %"class.mqtt::message"*, %"class.mqtt::message"** %2, align 8
  %4 = load atomic i8, i8* bitcast (i64* @_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11 to i8*) acquire, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11, !prof !9

6:                                                ; preds = %1
  %7 = call i32 @__cxa_guard_acquire(i64* @_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11) #3
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11) #3
  %10 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11 to i8*), i8* @__dso_handle) #3
  call void @__cxa_guard_release(i64* @_ZGVZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11) #3
  br label %11

11:                                               ; preds = %9, %6, %1
  %12 = getelementptr inbounds %"class.mqtt::message", %"class.mqtt::message"* %3, i32 0, i32 1
  %13 = call noundef zeroext i1 @_ZNK4mqtt10buffer_refIcEcvbEv(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.mqtt::message", %"class.mqtt::message"* %3, i32 0, i32 1
  %16 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %15)
  br label %18

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi %"class.std::__cxx11::basic_string"* [ %16, %14 ], [ @_ZZNK4mqtt7message9get_topicB5cxx11EvE9EMPTY_STRB5cxx11, %17 ]
  ret %"class.std::__cxx11::basic_string"* %19
}

; Function Attrs: nounwind
declare noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK4mqtt7message9to_stringB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120) %1) #7 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.mqtt::message"*, align 8
  %5 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.mqtt::message"* %1, %"class.mqtt::message"** %4, align 8
  %6 = load %"class.mqtt::message"*, %"class.mqtt::message"** %4, align 8
  %7 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNK4mqtt7message15get_payload_strB5cxx11Ev(%"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120) %6)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n48_N13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE(%class.mqtt_callback* noundef %0, %"class.std::shared_ptr.12"* noundef %1) unnamed_addr #11 comdat align 2 {
  %3 = alloca %class.mqtt_callback*, align 8
  store %class.mqtt_callback* %0, %class.mqtt_callback** %3, align 8
  %4 = load %class.mqtt_callback*, %class.mqtt_callback** %3, align 8
  %5 = bitcast %class.mqtt_callback* %4 to i8*
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 -48
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %5, i64 %10
  %12 = bitcast i8* %11 to %class.mqtt_callback*
  tail call void @_ZN13mqtt_callback15message_arrivedESt10shared_ptrIKN4mqtt7messageEE(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %12, %"class.std::shared_ptr.12"* noundef %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::message"* @_ZNKSt19__shared_ptr_accessIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access.14"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access.14"*, align 8
  store %"class.std::__shared_ptr_access.14"* %0, %"class.std::__shared_ptr_access.14"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access.14"*, %"class.std::__shared_ptr_access.14"** %2, align 8
  %4 = bitcast %"class.std::__shared_ptr_access.14"* %3 to %"class.std::__shared_ptr.13"*
  %5 = call noundef %"class.mqtt::message"* @_ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr.13"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret %"class.mqtt::message"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::message"* @_ZNKSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr.13"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.13"*, align 8
  store %"class.std::__shared_ptr.13"* %0, %"class.std::__shared_ptr.13"** %2, align 8
  %3 = load %"class.std::__shared_ptr.13"*, %"class.std::__shared_ptr.13"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.13", %"class.std::__shared_ptr.13"* %3, i32 0, i32 0
  %5 = load %"class.mqtt::message"*, %"class.mqtt::message"** %4, align 8
  ret %"class.mqtt::message"* %5
}

; Function Attrs: nounwind
declare i32 @__cxa_guard_acquire(i64*) #3

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @__cxa_guard_release(i64*) #3

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4mqtt10buffer_refIcEcvbEv(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %0) #7 comdat align 2 {
  %2 = alloca %"class.mqtt::buffer_ref"*, align 8
  store %"class.mqtt::buffer_ref"* %0, %"class.mqtt::buffer_ref"** %2, align 8
  %3 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::buffer_ref", %"class.mqtt::buffer_ref"* %3, i32 0, i32 0
  %5 = bitcast %"class.std::shared_ptr"* %4 to %"class.std::__shared_ptr"*
  %6 = call noundef zeroext i1 @_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %5)
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.mqtt::buffer_ref"*, align 8
  store %"class.mqtt::buffer_ref"* %0, %"class.mqtt::buffer_ref"** %2, align 8
  %3 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::buffer_ref", %"class.mqtt::buffer_ref"* %3, i32 0, i32 0
  %5 = bitcast %"class.std::shared_ptr"* %4 to %"class.std::__shared_ptr_access"*
  %6 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv(%"class.std::__shared_ptr_access"* noundef nonnull align 1 dereferenceable(1) %5) #3
  ret %"class.std::__cxx11::basic_string"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEcvbEv(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr"** %2, align 8
  %3 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %3, i32 0, i32 0
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %6 = icmp eq %"class.std::__cxx11::basic_string"* %5, null
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i1 false, i1 true
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEdeEv(%"class.std::__shared_ptr_access"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access"*, align 8
  store %"class.std::__shared_ptr_access"* %0, %"class.std::__shared_ptr_access"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access"*, %"class.std::__shared_ptr_access"** %2, align 8
  %4 = call noundef %"class.std::__cxx11::basic_string"* @_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access"* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret %"class.std::__cxx11::basic_string"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.std::__cxx11::basic_string"* @_ZNKSt19__shared_ptr_accessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access"*, align 8
  store %"class.std::__shared_ptr_access"* %0, %"class.std::__shared_ptr_access"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access"*, %"class.std::__shared_ptr_access"** %2, align 8
  %4 = bitcast %"class.std::__shared_ptr_access"* %3 to %"class.std::__shared_ptr"*
  %5 = call noundef %"class.std::__cxx11::basic_string"* @_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret %"class.std::__cxx11::basic_string"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.std::__cxx11::basic_string"* @_ZNKSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr"** %2, align 8
  %3 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %3, i32 0, i32 0
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  ret %"class.std::__cxx11::basic_string"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNK4mqtt7message15get_payload_strB5cxx11Ev(%"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120) %0) #7 comdat align 2 {
  %2 = alloca %"class.mqtt::message"*, align 8
  store %"class.mqtt::message"* %0, %"class.mqtt::message"** %2, align 8
  %3 = load %"class.mqtt::message"*, %"class.mqtt::message"** %2, align 8
  %4 = load atomic i8, i8* bitcast (i64* @_ZGVZNK4mqtt7message15get_payload_strB5cxx11EvE9EMPTY_STRB5cxx11 to i8*) acquire, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11, !prof !9

6:                                                ; preds = %1
  %7 = call i32 @__cxa_guard_acquire(i64* @_ZGVZNK4mqtt7message15get_payload_strB5cxx11EvE9EMPTY_STRB5cxx11) #3
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZZNK4mqtt7message15get_payload_strB5cxx11EvE9EMPTY_STRB5cxx11) #3
  %10 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZZNK4mqtt7message15get_payload_strB5cxx11EvE9EMPTY_STRB5cxx11 to i8*), i8* @__dso_handle) #3
  call void @__cxa_guard_release(i64* @_ZGVZNK4mqtt7message15get_payload_strB5cxx11EvE9EMPTY_STRB5cxx11) #3
  br label %11

11:                                               ; preds = %9, %6, %1
  %12 = getelementptr inbounds %"class.mqtt::message", %"class.mqtt::message"* %3, i32 0, i32 2
  %13 = call noundef zeroext i1 @_ZNK4mqtt10buffer_refIcEcvbEv(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %12)
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.mqtt::message", %"class.mqtt::message"* %3, i32 0, i32 2
  %16 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNK4mqtt10buffer_refIcE3strB5cxx11Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %15)
  br label %18

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi %"class.std::__cxx11::basic_string"* [ %16, %14 ], [ @_ZZNK4mqtt7message15get_payload_strB5cxx11EvE9EMPTY_STRB5cxx11, %17 ]
  ret %"class.std::__cxx11::basic_string"* %19
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv(%"class.std::__shared_ptr.113"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.113"*, align 8
  store %"class.std::__shared_ptr.113"* %0, %"class.std::__shared_ptr.113"** %2, align 8
  %3 = load %"class.std::__shared_ptr.113"*, %"class.std::__shared_ptr.113"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.113", %"class.std::__shared_ptr.113"* %3, i32 0, i32 0
  %5 = load %"class.mqtt::delivery_token"*, %"class.mqtt::delivery_token"** %4, align 8
  %6 = icmp eq %"class.mqtt::delivery_token"* %5, null
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i1 false, i1 true
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::delivery_token"* @_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.114"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access.114"*, align 8
  store %"class.std::__shared_ptr_access.114"* %0, %"class.std::__shared_ptr_access.114"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access.114"*, %"class.std::__shared_ptr_access.114"** %2, align 8
  %4 = call noundef %"class.mqtt::delivery_token"* @_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access.114"* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret %"class.mqtt::delivery_token"* %4
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n56_N13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE(%class.mqtt_callback* noundef %0, %"class.std::shared_ptr.112"* noundef %1) unnamed_addr #11 comdat align 2 {
  %3 = alloca %class.mqtt_callback*, align 8
  store %class.mqtt_callback* %0, %class.mqtt_callback** %3, align 8
  %4 = load %class.mqtt_callback*, %class.mqtt_callback** %3, align 8
  %5 = bitcast %class.mqtt_callback* %4 to i8*
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 -56
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %5, i64 %10
  %12 = bitcast i8* %11 to %class.mqtt_callback*
  tail call void @_ZN13mqtt_callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %12, %"class.std::shared_ptr.112"* noundef %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::delivery_token"* @_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access.114"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access.114"*, align 8
  store %"class.std::__shared_ptr_access.114"* %0, %"class.std::__shared_ptr_access.114"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access.114"*, %"class.std::__shared_ptr_access.114"** %2, align 8
  %4 = bitcast %"class.std::__shared_ptr_access.114"* %3 to %"class.std::__shared_ptr.113"*
  %5 = call noundef %"class.mqtt::delivery_token"* @_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr.113"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret %"class.mqtt::delivery_token"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::delivery_token"* @_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr.113"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.113"*, align 8
  store %"class.std::__shared_ptr.113"* %0, %"class.std::__shared_ptr.113"** %2, align 8
  %3 = load %"class.std::__shared_ptr.113"*, %"class.std::__shared_ptr.113"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.113", %"class.std::__shared_ptr.113"* %3, i32 0, i32 0
  %5 = load %"class.mqtt::delivery_token"*, %"class.mqtt::delivery_token"** %4, align 8
  ret %"class.mqtt::delivery_token"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4mqtt6to_intEb(i1 noundef zeroext %0) #6 comdat {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = trunc i8 %4 to i1
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 1, i32 0
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt21name_value_collectionD2Ev(%"class.mqtt::name_value_collection"* noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::name_value_collection"*, align 8
  store %"class.mqtt::name_value_collection"* %0, %"class.mqtt::name_value_collection"** %2, align 8
  %3 = load %"class.mqtt::name_value_collection"*, %"class.mqtt::name_value_collection"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::name_value_collection", %"class.mqtt::name_value_collection"* %3, i32 0, i32 1
  call void @_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev(%"class.std::vector.106"* noundef nonnull align 8 dereferenceable(24) %4) #3
  %5 = getelementptr inbounds %"class.mqtt::name_value_collection", %"class.mqtt::name_value_collection"* %3, i32 0, i32 0
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(%"class.std::map"* noundef nonnull align 8 dereferenceable(48) %5) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev(%"class.std::shared_ptr.22"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::shared_ptr.22"*, align 8
  store %"class.std::shared_ptr.22"* %0, %"class.std::shared_ptr.22"** %2, align 8
  %3 = load %"class.std::shared_ptr.22"*, %"class.std::shared_ptr.22"** %2, align 8
  %4 = bitcast %"class.std::shared_ptr.22"* %3 to %"class.std::__shared_ptr.23"*
  call void @_ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.23"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::buffer_ref"*, align 8
  store %"class.mqtt::buffer_ref"* %0, %"class.mqtt::buffer_ref"** %2, align 8
  %3 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::buffer_ref", %"class.mqtt::buffer_ref"* %3, i32 0, i32 0
  call void @_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.std::shared_ptr"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt11ssl_optionsD2Ev(%"class.mqtt::ssl_options"* noundef nonnull align 8 dereferenceable(416) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::ssl_options"*, align 8
  store %"class.mqtt::ssl_options"* %0, %"class.mqtt::ssl_options"** %2, align 8
  %3 = load %"class.mqtt::ssl_options"*, %"class.mqtt::ssl_options"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::ssl_options", %"class.mqtt::ssl_options"* %3, i32 0, i32 9
  call void @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %4) #3
  %5 = getelementptr inbounds %"class.mqtt::ssl_options", %"class.mqtt::ssl_options"* %3, i32 0, i32 8
  call void @_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev(%"class.std::function.95"* noundef nonnull align 8 dereferenceable(32) %5) #3
  %6 = getelementptr inbounds %"class.mqtt::ssl_options", %"class.mqtt::ssl_options"* %3, i32 0, i32 7
  call void @_ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %6) #3
  %7 = getelementptr inbounds %"class.mqtt::ssl_options", %"class.mqtt::ssl_options"* %3, i32 0, i32 6
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #3
  %8 = getelementptr inbounds %"class.mqtt::ssl_options", %"class.mqtt::ssl_options"* %3, i32 0, i32 5
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8) #3
  %9 = getelementptr inbounds %"class.mqtt::ssl_options", %"class.mqtt::ssl_options"* %3, i32 0, i32 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #3
  %10 = getelementptr inbounds %"class.mqtt::ssl_options", %"class.mqtt::ssl_options"* %3, i32 0, i32 3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #3
  %11 = getelementptr inbounds %"class.mqtt::ssl_options", %"class.mqtt::ssl_options"* %3, i32 0, i32 2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
  %12 = getelementptr inbounds %"class.mqtt::ssl_options", %"class.mqtt::ssl_options"* %3, i32 0, i32 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt12will_optionsD2Ev(%"class.mqtt::will_options"* noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::will_options"*, align 8
  store %"class.mqtt::will_options"* %0, %"class.mqtt::will_options"** %2, align 8
  %3 = load %"class.mqtt::will_options"*, %"class.mqtt::will_options"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::will_options", %"class.mqtt::will_options"* %3, i32 0, i32 3
  call void @_ZN4mqtt10propertiesD2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %4) #3
  %5 = getelementptr inbounds %"class.mqtt::will_options", %"class.mqtt::will_options"* %3, i32 0, i32 2
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %5) #3
  %6 = getelementptr inbounds %"class.mqtt::will_options", %"class.mqtt::will_options"* %3, i32 0, i32 1
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %6) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI19MQTTAsync_nameValueSaIS0_EED2Ev(%"class.std::vector.106"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector.106"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"class.std::vector.106"* %0, %"class.std::vector.106"** %2, align 8
  %5 = load %"class.std::vector.106"*, %"class.std::vector.106"** %2, align 8
  %6 = bitcast %"class.std::vector.106"* %5 to %"struct.std::_Vector_base.107"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base.107", %"struct.std::_Vector_base.107"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl", %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* %7, i32 0, i32 0
  %9 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %8, align 8
  %10 = bitcast %"class.std::vector.106"* %5 to %"struct.std::_Vector_base.107"*
  %11 = getelementptr inbounds %"struct.std::_Vector_base.107", %"struct.std::_Vector_base.107"* %10, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl", %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* %11, i32 0, i32 1
  %13 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %12, align 8
  %14 = bitcast %"class.std::vector.106"* %5 to %"struct.std::_Vector_base.107"*
  %15 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.108"* @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.107"* noundef nonnull align 8 dereferenceable(24) %14) #3
  invoke void @_ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E(%struct.MQTTAsync_nameValue* noundef %9, %struct.MQTTAsync_nameValue* noundef %13, %"class.std::allocator.108"* noundef nonnull align 1 dereferenceable(1) %15)
          to label %16 unwind label %18

16:                                               ; preds = %1
  %17 = bitcast %"class.std::vector.106"* %5 to %"struct.std::_Vector_base.107"*
  call void @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev(%"struct.std::_Vector_base.107"* noundef nonnull align 8 dereferenceable(24) %17) #3
  ret void

18:                                               ; preds = %1
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %3, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %4, align 4
  %22 = bitcast %"class.std::vector.106"* %5 to %"struct.std::_Vector_base.107"*
  call void @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev(%"struct.std::_Vector_base.107"* noundef nonnull align 8 dereferenceable(24) %22) #3
  br label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %24) #15
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(%"class.std::map"* noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %2, align 8
  %3 = load %"class.std::map"*, %"class.std::map"** %2, align 8
  %4 = getelementptr inbounds %"class.std::map", %"class.std::map"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP19MQTTAsync_nameValueS0_EvT_S2_RSaIT0_E(%struct.MQTTAsync_nameValue* noundef %0, %struct.MQTTAsync_nameValue* noundef %1, %"class.std::allocator.108"* noundef nonnull align 1 dereferenceable(1) %2) #7 comdat {
  %4 = alloca %struct.MQTTAsync_nameValue*, align 8
  %5 = alloca %struct.MQTTAsync_nameValue*, align 8
  %6 = alloca %"class.std::allocator.108"*, align 8
  store %struct.MQTTAsync_nameValue* %0, %struct.MQTTAsync_nameValue** %4, align 8
  store %struct.MQTTAsync_nameValue* %1, %struct.MQTTAsync_nameValue** %5, align 8
  store %"class.std::allocator.108"* %2, %"class.std::allocator.108"** %6, align 8
  %7 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %4, align 8
  %8 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %5, align 8
  call void @_ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_(%struct.MQTTAsync_nameValue* noundef %7, %struct.MQTTAsync_nameValue* noundef %8)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.108"* @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.107"* noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.107"*, align 8
  store %"struct.std::_Vector_base.107"* %0, %"struct.std::_Vector_base.107"** %2, align 8
  %3 = load %"struct.std::_Vector_base.107"*, %"struct.std::_Vector_base.107"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.107", %"struct.std::_Vector_base.107"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* %4 to %"class.std::allocator.108"*
  ret %"class.std::allocator.108"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EED2Ev(%"struct.std::_Vector_base.107"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base.107"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::_Vector_base.107"* %0, %"struct.std::_Vector_base.107"** %2, align 8
  %5 = load %"struct.std::_Vector_base.107"*, %"struct.std::_Vector_base.107"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.107", %"struct.std::_Vector_base.107"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl", %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* %6, i32 0, i32 0
  %8 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %7, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base.107", %"struct.std::_Vector_base.107"* %5, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl", %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* %9, i32 0, i32 2
  %11 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %10, align 8
  %12 = getelementptr inbounds %"struct.std::_Vector_base.107", %"struct.std::_Vector_base.107"* %5, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl", %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* %12, i32 0, i32 0
  %14 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %13, align 8
  %15 = ptrtoint %struct.MQTTAsync_nameValue* %11 to i64
  %16 = ptrtoint %struct.MQTTAsync_nameValue* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 16
  invoke void @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.107"* noundef nonnull align 8 dereferenceable(24) %5, %struct.MQTTAsync_nameValue* noundef %8, i64 noundef %18)
          to label %19 unwind label %21

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"struct.std::_Vector_base.107", %"struct.std::_Vector_base.107"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %20) #3
  ret void

21:                                               ; preds = %1
  %22 = landingpad { i8*, i32 }
          catch i8* null
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %3, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %4, align 4
  %25 = getelementptr inbounds %"struct.std::_Vector_base.107", %"struct.std::_Vector_base.107"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %25) #3
  br label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %27) #15
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP19MQTTAsync_nameValueEvT_S2_(%struct.MQTTAsync_nameValue* noundef %0, %struct.MQTTAsync_nameValue* noundef %1) #7 comdat {
  %3 = alloca %struct.MQTTAsync_nameValue*, align 8
  %4 = alloca %struct.MQTTAsync_nameValue*, align 8
  store %struct.MQTTAsync_nameValue* %0, %struct.MQTTAsync_nameValue** %3, align 8
  store %struct.MQTTAsync_nameValue* %1, %struct.MQTTAsync_nameValue** %4, align 8
  %5 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %3, align 8
  %6 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_(%struct.MQTTAsync_nameValue* noundef %5, %struct.MQTTAsync_nameValue* noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIP19MQTTAsync_nameValueEEvT_S4_(%struct.MQTTAsync_nameValue* noundef %0, %struct.MQTTAsync_nameValue* noundef %1) #6 comdat align 2 {
  %3 = alloca %struct.MQTTAsync_nameValue*, align 8
  %4 = alloca %struct.MQTTAsync_nameValue*, align 8
  store %struct.MQTTAsync_nameValue* %0, %struct.MQTTAsync_nameValue** %3, align 8
  store %struct.MQTTAsync_nameValue* %1, %struct.MQTTAsync_nameValue** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.107"* noundef nonnull align 8 dereferenceable(24) %0, %struct.MQTTAsync_nameValue* noundef %1, i64 noundef %2) #7 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base.107"*, align 8
  %5 = alloca %struct.MQTTAsync_nameValue*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base.107"* %0, %"struct.std::_Vector_base.107"** %4, align 8
  store %struct.MQTTAsync_nameValue* %1, %struct.MQTTAsync_nameValue** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base.107"*, %"struct.std::_Vector_base.107"** %4, align 8
  %8 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %5, align 8
  %9 = icmp ne %struct.MQTTAsync_nameValue* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.107", %"struct.std::_Vector_base.107"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* %11 to %"class.std::allocator.108"*
  %13 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m(%"class.std::allocator.108"* noundef nonnull align 1 dereferenceable(1) %12, %struct.MQTTAsync_nameValue* noundef %13, i64 noundef %14)
  br label %15

15:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI19MQTTAsync_nameValueSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* %0, %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"*, %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<MQTTAsync_nameValue, std::allocator<MQTTAsync_nameValue>>::_Vector_impl"* %3 to %"class.std::allocator.108"*
  call void @_ZNSaI19MQTTAsync_nameValueED2Ev(%"class.std::allocator.108"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI19MQTTAsync_nameValueEE10deallocateERS1_PS0_m(%"class.std::allocator.108"* noundef nonnull align 1 dereferenceable(1) %0, %struct.MQTTAsync_nameValue* noundef %1, i64 noundef %2) #7 comdat align 2 {
  %4 = alloca %"class.std::allocator.108"*, align 8
  %5 = alloca %struct.MQTTAsync_nameValue*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.108"* %0, %"class.std::allocator.108"** %4, align 8
  store %struct.MQTTAsync_nameValue* %1, %struct.MQTTAsync_nameValue** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.108"*, %"class.std::allocator.108"** %4, align 8
  %8 = bitcast %"class.std::allocator.108"* %7 to %"class.__gnu_cxx::new_allocator.109"*
  %9 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.109"* noundef nonnull align 1 dereferenceable(1) %8, %struct.MQTTAsync_nameValue* noundef %9, i64 noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.109"* noundef nonnull align 1 dereferenceable(1) %0, %struct.MQTTAsync_nameValue* noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.109"*, align 8
  %5 = alloca %struct.MQTTAsync_nameValue*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.109"* %0, %"class.__gnu_cxx::new_allocator.109"** %4, align 8
  store %struct.MQTTAsync_nameValue* %1, %struct.MQTTAsync_nameValue** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.109"*, %"class.__gnu_cxx::new_allocator.109"** %4, align 8
  %8 = load %struct.MQTTAsync_nameValue*, %struct.MQTTAsync_nameValue** %5, align 8
  %9 = bitcast %struct.MQTTAsync_nameValue* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI19MQTTAsync_nameValueED2Ev(%"class.std::allocator.108"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator.108"*, align 8
  store %"class.std::allocator.108"* %0, %"class.std::allocator.108"** %2, align 8
  %3 = load %"class.std::allocator.108"*, %"class.std::allocator.108"** %2, align 8
  %4 = bitcast %"class.std::allocator.108"* %3 to %"class.__gnu_cxx::new_allocator.109"*
  call void @_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev(%"class.__gnu_cxx::new_allocator.109"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI19MQTTAsync_nameValueED2Ev(%"class.__gnu_cxx::new_allocator.109"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.109"*, align 8
  store %"class.__gnu_cxx::new_allocator.109"* %0, %"class.__gnu_cxx::new_allocator.109"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.109"*, %"class.__gnu_cxx::new_allocator.109"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %6 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %5) #3
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %5, %"struct.std::_Rb_tree_node"* noundef %6)
          to label %7 unwind label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %5, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* noundef nonnull align 8 dereferenceable(48) %8) #3
  ret void

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %3, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %5, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* noundef nonnull align 8 dereferenceable(48) %13) #3
  br label %14

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %15) #15
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node"* noundef %1) #7 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %6 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  br label %7

7:                                                ; preds = %10, %2
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %9 = icmp ne %"struct.std::_Rb_tree_node"* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  %13 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %12) #3
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %6, %"struct.std::_Rb_tree_node"* noundef %13)
  %14 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node"* %14 to %"struct.std::_Rb_tree_node_base"*
  %16 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %15) #3
  store %"struct.std::_Rb_tree_node"* %16, %"struct.std::_Rb_tree_node"** %5, align 8
  %17 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %6, %"struct.std::_Rb_tree_node"* noundef %17) #3
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  store %"struct.std::_Rb_tree_node"* %18, %"struct.std::_Rb_tree_node"** %4, align 8
  br label %7, !llvm.loop !10

19:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 1
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = bitcast %"struct.std::_Rb_tree_node_base"* %10 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %0, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"** %2, align 8
  %3 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %3 to %"class.std::allocator.102"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev(%"class.std::allocator.102"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 3
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 2
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node"* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %5, %"struct.std::_Rb_tree_node"* noundef %6) #3
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %5, %"struct.std::_Rb_tree_node"* noundef %7) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node"* noundef %1) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.102"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %5) #3
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %8 = invoke noundef %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(%"struct.std::_Rb_tree_node"* noundef nonnull align 8 dereferenceable(96) %7)
          to label %9 unwind label %12

9:                                                ; preds = %2
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(%"class.std::allocator.102"* noundef nonnull align 1 dereferenceable(1) %6, %"struct.std::pair"* noundef %8)
          to label %10 unwind label %12

10:                                               ; preds = %9
  %11 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  ret void

12:                                               ; preds = %9, %2
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node"* noundef %1) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.102"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %5) #3
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(%"class.std::allocator.102"* noundef nonnull align 1 dereferenceable(1) %6, %"struct.std::_Rb_tree_node"* noundef %7, i64 noundef 1)
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #15
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(%"class.std::allocator.102"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::pair"* noundef %1) #7 comdat align 2 {
  %3 = alloca %"class.std::allocator.102"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"class.std::allocator.102"* %0, %"class.std::allocator.102"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %5 = load %"class.std::allocator.102"*, %"class.std::allocator.102"** %3, align 8
  %6 = bitcast %"class.std::allocator.102"* %5 to %"class.__gnu_cxx::new_allocator.103"*
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_(%"class.__gnu_cxx::new_allocator.103"* noundef nonnull align 1 dereferenceable(1) %6, %"struct.std::pair"* noundef %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.102"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %4 to %"class.std::allocator.102"*
  ret %"class.std::allocator.102"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(%"struct.std::_Rb_tree_node"* noundef nonnull align 8 dereferenceable(96) %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %0, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %3, i32 0, i32 1
  %5 = call noundef %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %4) #3
  ret %"struct.std::pair"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_(%"class.__gnu_cxx::new_allocator.103"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::pair"* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.103"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::new_allocator.103"* %0, %"class.__gnu_cxx::new_allocator.103"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.103"*, %"class.__gnu_cxx::new_allocator.103"** %3, align 8
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %6) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %2, align 8
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %3, i32 0, i32 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #3
  %5 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %0) #6 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call noundef i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %3) #3
  %5 = bitcast i8* %4 to %"struct.std::pair"*
  ret %"struct.std::pair"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %0) #6 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [64 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(%"class.std::allocator.102"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::_Rb_tree_node"* noundef %1, i64 noundef %2) #7 comdat align 2 {
  %4 = alloca %"class.std::allocator.102"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.102"* %0, %"class.std::allocator.102"** %4, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.102"*, %"class.std::allocator.102"** %4, align 8
  %8 = bitcast %"class.std::allocator.102"* %7 to %"class.__gnu_cxx::new_allocator.103"*
  %9 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m(%"class.__gnu_cxx::new_allocator.103"* noundef nonnull align 1 dereferenceable(1) %8, %"struct.std::_Rb_tree_node"* noundef %9, i64 noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m(%"class.__gnu_cxx::new_allocator.103"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::_Rb_tree_node"* noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.103"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.103"* %0, %"class.__gnu_cxx::new_allocator.103"** %4, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.103"*, %"class.__gnu_cxx::new_allocator.103"** %4, align 8
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev(%"class.std::allocator.102"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator.102"*, align 8
  store %"class.std::allocator.102"* %0, %"class.std::allocator.102"** %2, align 8
  %3 = load %"class.std::allocator.102"*, %"class.std::allocator.102"** %2, align 8
  %4 = bitcast %"class.std::allocator.102"* %3 to %"class.__gnu_cxx::new_allocator.103"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev(%"class.__gnu_cxx::new_allocator.103"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev(%"class.__gnu_cxx::new_allocator.103"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.103"*, align 8
  store %"class.__gnu_cxx::new_allocator.103"* %0, %"class.__gnu_cxx::new_allocator.103"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.103"*, %"class.__gnu_cxx::new_allocator.103"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIKN4mqtt17string_collectionELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.23"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.23"*, align 8
  store %"class.std::__shared_ptr.23"* %0, %"class.std::__shared_ptr.23"** %2, align 8
  %3 = load %"class.std::__shared_ptr.23"*, %"class.std::__shared_ptr.23"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.23", %"class.std::__shared_ptr.23"* %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_count"*, align 8
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %2, align 8
  %3 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %3, i32 0, i32 0
  %5 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %4, align 8
  %6 = icmp ne %"class.std::_Sp_counted_base"* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %3, i32 0, i32 0
  %9 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %8, align 8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %9) #3
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %0, %"class.std::_Sp_counted_base"** %2, align 8
  %3 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %3, i32 0, i32 1
  %5 = invoke noundef i32 @_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii(i32* noundef %4, i32 noundef -1)
          to label %6 unwind label %24

6:                                                ; preds = %1
  %7 = icmp eq i32 %5, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %6
  %9 = bitcast %"class.std::_Sp_counted_base"* %3 to void (%"class.std::_Sp_counted_base"*)***
  %10 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %9, align 8
  %11 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %10, i64 2
  %12 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %11, align 8
  call void %12(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %3) #3
  %13 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %3, i32 0, i32 2
  %14 = invoke noundef i32 @_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii(i32* noundef %13, i32 noundef -1)
          to label %15 unwind label %24

15:                                               ; preds = %8
  %16 = icmp eq i32 %14, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = bitcast %"class.std::_Sp_counted_base"* %3 to void (%"class.std::_Sp_counted_base"*)***
  %19 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %18, align 8
  %20 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %19, i64 3
  %21 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %20, align 8
  call void %21(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %3) #3
  br label %22

22:                                               ; preds = %17, %15
  br label %23

23:                                               ; preds = %22, %6
  ret void

24:                                               ; preds = %8, %1
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  call void @__clang_call_terminate(i8* %26) #15
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i32 @_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii(i32* noundef %0, i32 noundef %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call noundef i32 @_ZL18__gthread_active_pv()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call noundef i32 @_ZN9__gnu_cxxL18__exchange_and_addEPVii(i32* noundef %9, i32 noundef %10)
  store i32 %11, i32* %3, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call noundef i32 @_ZN9__gnu_cxxL25__exchange_and_add_singleEPii(i32* noundef %13, i32 noundef %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef i32 @_ZL18__gthread_active_pv() #6 {
  ret i32 zext (i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null) to i32)
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef i32 @_ZN9__gnu_cxxL18__exchange_and_addEPVii(i32* noundef %0, i32 noundef %1) #6 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = atomicrmw volatile add i32* %7, i32 %9 acq_rel, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef i32 @_ZN9__gnu_cxxL25__exchange_and_add_singleEPii(i32* noundef %0, i32 noundef %1) #6 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, %8
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  ret i32 %12
}

; Function Attrs: nounwind
declare extern_weak noundef i32 @__pthread_key_create(i32* noundef, void (i8*)* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.std::shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %0, %"class.std::shared_ptr"** %2, align 8
  %3 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %2, align 8
  %4 = bitcast %"class.std::shared_ptr"* %3 to %"class.std::__shared_ptr"*
  call void @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr"** %2, align 8
  %3 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEED2Ev(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__cxx11::basic_string.97"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"class.std::__cxx11::basic_string.97"* %0, %"class.std::__cxx11::basic_string.97"** %2, align 8
  %5 = load %"class.std::__cxx11::basic_string.97"*, %"class.std::__cxx11::basic_string.97"** %2, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %6 unwind label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string.97", %"class.std::__cxx11::basic_string.97"* %5, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %7) #3
  ret void

8:                                                ; preds = %1
  %9 = landingpad { i8*, i32 }
          cleanup
          filter [0 x i8*] zeroinitializer
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string.97", %"class.std::__cxx11::basic_string.97"* %5, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %12) #3
  br label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  call void @__cxa_call_unexpected(i8* %14) #18
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcmPhmEED2Ev(%"class.std::function.95"* noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::function.95"*, align 8
  store %"class.std::function.95"* %0, %"class.std::function.95"** %2, align 8
  %3 = load %"class.std::function.95"*, %"class.std::function.95"** %2, align 8
  %4 = bitcast %"class.std::function.95"* %3 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %0, %"class.std::function"** %2, align 8
  %3 = load %"class.std::function"*, %"class.std::function"** %2, align 8
  %4 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_disposeEv(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string.97"*, align 8
  store %"class.std::__cxx11::basic_string.97"* %0, %"class.std::__cxx11::basic_string.97"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string.97"*, %"class.std::__cxx11::basic_string.97"** %2, align 8
  %4 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %3)
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string.97", %"class.std::__cxx11::basic_string.97"* %3, i32 0, i32 2
  %7 = bitcast %union.anon.101* %6 to i64*
  %8 = load i64, i64* %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %8) #3
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider"*, align 8
  store %"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider"* %0, %"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider"** %2, align 8
  %3 = load %"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider"** %2, align 8
  %4 = bitcast %"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider"* %3 to %"class.std::allocator.98"*
  call void @_ZNSaIhED2Ev(%"class.std::allocator.98"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

declare void @__cxa_call_unexpected(i8*)

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE11_M_is_localEv(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string.97"*, align 8
  store %"class.std::__cxx11::basic_string.97"* %0, %"class.std::__cxx11::basic_string.97"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string.97"*, %"class.std::__cxx11::basic_string.97"** %2, align 8
  %4 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %3)
  %5 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %3)
  %6 = icmp eq i8* %4, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE10_M_destroyEm(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::basic_string.97"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %"class.std::__cxx11::basic_string.97"* %0, %"class.std::__cxx11::basic_string.97"** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %"class.std::__cxx11::basic_string.97"*, %"class.std::__cxx11::basic_string.97"** %3, align 8
  %8 = invoke noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.98"* @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %9 unwind label %14

9:                                                ; preds = %2
  %10 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %7)
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %11, 1
  invoke void @_ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm(%"class.std::allocator.98"* noundef nonnull align 1 dereferenceable(1) %8, i8* noundef %10, i64 noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %9
  ret void

14:                                               ; preds = %9, %2
  %15 = landingpad { i8*, i32 }
          filter [0 x i8*] zeroinitializer
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %5, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  call void @__cxa_call_unexpected(i8* %19) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE7_M_dataEv(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string.97"*, align 8
  store %"class.std::__cxx11::basic_string.97"* %0, %"class.std::__cxx11::basic_string.97"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string.97"*, %"class.std::__cxx11::basic_string.97"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string.97", %"class.std::__cxx11::basic_string.97"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider", %"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider"* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE13_M_local_dataEv(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string.97"*, align 8
  store %"class.std::__cxx11::basic_string.97"* %0, %"class.std::__cxx11::basic_string.97"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string.97"*, %"class.std::__cxx11::basic_string.97"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string.97", %"class.std::__cxx11::basic_string.97"* %3, i32 0, i32 2
  %5 = bitcast %union.anon.101* %4 to [16 x i8]*
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %7 = call noundef i8* @_ZNSt14pointer_traitsIPKhE10pointer_toERS0_(i8* noundef nonnull align 1 dereferenceable(1) %6) #3
  ret i8* %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt14pointer_traitsIPKhE10pointer_toERS0_(i8* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call noundef i8* @_ZSt9addressofIKhEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret i8* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZSt9addressofIKhEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call noundef i8* @_ZSt11__addressofIKhEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret i8* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZSt11__addressofIKhEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIhEE10deallocateERS0_Phm(%"class.std::allocator.98"* noundef nonnull align 1 dereferenceable(1) %0, i8* noundef %1, i64 noundef %2) #7 comdat align 2 {
  %4 = alloca %"class.std::allocator.98"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.98"* %0, %"class.std::allocator.98"** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.98"*, %"class.std::allocator.98"** %4, align 8
  %8 = bitcast %"class.std::allocator.98"* %7 to %"class.__gnu_cxx::new_allocator.99"*
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm(%"class.__gnu_cxx::new_allocator.99"* noundef nonnull align 1 dereferenceable(1) %8, i8* noundef %9, i64 noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.98"* @_ZNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string.97"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string.97"*, align 8
  store %"class.std::__cxx11::basic_string.97"* %0, %"class.std::__cxx11::basic_string.97"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string.97"*, %"class.std::__cxx11::basic_string.97"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string.97", %"class.std::__cxx11::basic_string.97"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::basic_string<unsigned char>::_Alloc_hider"* %4 to %"class.std::allocator.98"*
  ret %"class.std::allocator.98"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIhE10deallocateEPhm(%"class.__gnu_cxx::new_allocator.99"* noundef nonnull align 1 dereferenceable(1) %0, i8* noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.99"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.99"* %0, %"class.__gnu_cxx::new_allocator.99"** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.99"*, %"class.__gnu_cxx::new_allocator.99"** %4, align 8
  %8 = load i8*, i8** %5, align 8
  call void @_ZdlPv(i8* noundef %8) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIhED2Ev(%"class.std::allocator.98"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator.98"*, align 8
  store %"class.std::allocator.98"* %0, %"class.std::allocator.98"** %2, align 8
  %3 = load %"class.std::allocator.98"*, %"class.std::allocator.98"** %2, align 8
  %4 = bitcast %"class.std::allocator.98"* %3 to %"class.__gnu_cxx::new_allocator.99"*
  call void @_ZN9__gnu_cxx13new_allocatorIhED2Ev(%"class.__gnu_cxx::new_allocator.99"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIhED2Ev(%"class.__gnu_cxx::new_allocator.99"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.99"*, align 8
  store %"class.__gnu_cxx::new_allocator.99"* %0, %"class.__gnu_cxx::new_allocator.99"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.99"*, %"class.__gnu_cxx::new_allocator.99"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %0, %"class.std::_Function_base"** %2, align 8
  %3 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 1
  %5 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %4, align 8
  %6 = icmp ne i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 1
  %9 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %8, align 8
  %10 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 0
  %11 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 0
  %12 = invoke noundef zeroext i1 %9(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %10, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 3)
          to label %13 unwind label %15

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13, %1
  ret void

15:                                               ; preds = %7
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  call void @__clang_call_terminate(i8* %17) #15
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

declare void @MQTTProperties_free(%struct.MQTTProperties* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.16"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.16"*, align 8
  store %"class.std::__shared_ptr.16"* %0, %"class.std::__shared_ptr.16"** %2, align 8
  %3 = load %"class.std::__shared_ptr.16"*, %"class.std::__shared_ptr.16"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.16", %"class.std::__shared_ptr.16"* %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN13mqtt_callbackD2Ev(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %0, i8** noundef %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %class.mqtt_callback*, align 8
  %4 = alloca i8**, align 8
  store %class.mqtt_callback* %0, %class.mqtt_callback** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %class.mqtt_callback*, %class.mqtt_callback** %3, align 8
  %6 = load i8**, i8*** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N13mqtt_callbackD1Ev(%class.mqtt_callback* noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.mqtt_callback*, align 8
  store %class.mqtt_callback* %0, %class.mqtt_callback** %2, align 8
  %3 = load %class.mqtt_callback*, %class.mqtt_callback** %2, align 8
  %4 = bitcast %class.mqtt_callback* %3 to i8*
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i8, i8* %4, i64 %9
  %11 = bitcast i8* %10 to %class.mqtt_callback*
  tail call void @_ZN13mqtt_callbackD1Ev(%class.mqtt_callback* noundef nonnull align 8 dereferenceable(8) %11) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::token"* @_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access.17"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access.17"*, align 8
  store %"class.std::__shared_ptr_access.17"* %0, %"class.std::__shared_ptr_access.17"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access.17"*, %"class.std::__shared_ptr_access.17"** %2, align 8
  %4 = bitcast %"class.std::__shared_ptr_access.17"* %3 to %"class.std::__shared_ptr.16"*
  %5 = call noundef %"class.mqtt::token"* @_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr.16"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret %"class.mqtt::token"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::token"* @_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr.16"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.16"*, align 8
  store %"class.std::__shared_ptr.16"* %0, %"class.std::__shared_ptr.16"** %2, align 8
  %3 = load %"class.std::__shared_ptr.16"*, %"class.std::__shared_ptr.16"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.16", %"class.std::__shared_ptr.16"* %3, i32 0, i32 0
  %5 = load %"class.mqtt::token"*, %"class.mqtt::token"** %4, align 8
  ret %"class.mqtt::token"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt6chronoleIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %1) #7 comdat {
  %3 = alloca %"struct.std::chrono::duration"*, align 8
  %4 = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"** %3, align 8
  store %"struct.std::chrono::duration"* %1, %"struct.std::chrono::duration"** %4, align 8
  %5 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %4, align 8
  %6 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %3, align 8
  %7 = call noundef zeroext i1 @_ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %5, %"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %6)
  %8 = xor i1 %7, true
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv() #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"struct.std::chrono::duration", align 8
  %2 = alloca i64, align 8
  %3 = call noundef i64 @_ZNSt6chrono15duration_valuesIlE4zeroEv() #3
  store i64 %3, i64* %2, align 8
  invoke void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %1, i64* noundef nonnull align 8 dereferenceable(8) %2)
          to label %4 unwind label %7

4:                                                ; preds = %0
  %5 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  ret i64 %6

7:                                                ; preds = %0
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #15
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %0) #7 comdat {
  %2 = alloca %"struct.std::chrono::duration", align 8
  %3 = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"** %3, align 8
  %4 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %3, align 8
  %5 = call i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %4)
  %6 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %2, i32 0, i32 0
  store i64 %5, i64* %6, align 8
  %7 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %2, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %0) #7 comdat {
  %2 = alloca %"struct.std::chrono::duration.115", align 8
  %3 = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"** %3, align 8
  %4 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %3, align 8
  %5 = call i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %4)
  %6 = getelementptr inbounds %"struct.std::chrono::duration.115", %"struct.std::chrono::duration.115"* %2, i32 0, i32 0
  store i64 %5, i64* %6, align 8
  %7 = getelementptr inbounds %"struct.std::chrono::duration.115", %"struct.std::chrono::duration.115"* %2, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %1) #7 comdat {
  %3 = alloca %"struct.std::chrono::duration", align 8
  %4 = alloca %"struct.std::chrono::duration"*, align 8
  %5 = alloca %"struct.std::chrono::duration"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"struct.std::chrono::duration", align 8
  %8 = alloca %"struct.std::chrono::duration", align 8
  store %"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"** %4, align 8
  store %"struct.std::chrono::duration"* %1, %"struct.std::chrono::duration"** %5, align 8
  %9 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %4, align 8
  %10 = bitcast %"struct.std::chrono::duration"* %7 to i8*
  %11 = bitcast %"struct.std::chrono::duration"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %7)
  %13 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %5, align 8
  %14 = bitcast %"struct.std::chrono::duration"* %8 to i8*
  %15 = bitcast %"struct.std::chrono::duration"* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %8)
  %17 = sub nsw i64 %12, %16
  store i64 %17, i64* %6, align 8
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %3, i64* noundef nonnull align 8 dereferenceable(8) %6)
  %18 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %3, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  ret i64 %19
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"** %2, align 8
  %3 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration.115"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::chrono::duration.115"*, align 8
  store %"struct.std::chrono::duration.115"* %0, %"struct.std::chrono::duration.115"** %2, align 8
  %3 = load %"struct.std::chrono::duration.115"*, %"struct.std::chrono::duration.115"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::chrono::duration.115", %"struct.std::chrono::duration.115"* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

declare i32 @nanosleep(%struct.timespec* noundef, %struct.timespec* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #13

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt6chronoltIlSt5ratioILl1ELl1EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %1) #7 comdat {
  %3 = alloca %"struct.std::chrono::duration"*, align 8
  %4 = alloca %"struct.std::chrono::duration"*, align 8
  %5 = alloca %"struct.std::chrono::duration", align 8
  %6 = alloca %"struct.std::chrono::duration", align 8
  store %"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"** %3, align 8
  store %"struct.std::chrono::duration"* %1, %"struct.std::chrono::duration"** %4, align 8
  %7 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %3, align 8
  %8 = bitcast %"struct.std::chrono::duration"* %5 to i8*
  %9 = bitcast %"struct.std::chrono::duration"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 8, i1 false)
  %10 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %5)
  %11 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %4, align 8
  %12 = bitcast %"struct.std::chrono::duration"* %6 to i8*
  %13 = bitcast %"struct.std::chrono::duration"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %6)
  %15 = icmp slt i64 %10, %14
  ret i1 %15
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6chrono15duration_valuesIlE4zeroEv() #6 comdat align 2 {
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.std::chrono::duration"*, align 8
  %4 = alloca i64*, align 8
  store %"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %5, i32 0, i32 0
  %7 = load i64*, i64** %4, align 8
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 {
  %2 = alloca %"struct.std::chrono::duration", align 8
  %3 = alloca %"struct.std::chrono::duration"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"** %3, align 8
  %5 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %3, align 8
  %6 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %5)
  store i64 %6, i64* %4, align 8
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %2, i64* noundef nonnull align 8 dereferenceable(8) %4)
  %7 = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %2, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  ret i64 %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 {
  %2 = alloca %"struct.std::chrono::duration.115", align 8
  %3 = alloca %"struct.std::chrono::duration"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"** %3, align 8
  %5 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %3, align 8
  %6 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* noundef nonnull align 8 dereferenceable(8) %5)
  %7 = mul nsw i64 %6, 1000000000
  store i64 %7, i64* %4, align 8
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(%"struct.std::chrono::duration.115"* noundef nonnull align 8 dereferenceable(8) %2, i64* noundef nonnull align 8 dereferenceable(8) %4)
  %8 = getelementptr inbounds %"struct.std::chrono::duration.115", %"struct.std::chrono::duration.115"* %2, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  ret i64 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(%"struct.std::chrono::duration.115"* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.std::chrono::duration.115"*, align 8
  %4 = alloca i64*, align 8
  store %"struct.std::chrono::duration.115"* %0, %"struct.std::chrono::duration.115"** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %"struct.std::chrono::duration.115"*, %"struct.std::chrono::duration.115"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::chrono::duration.115", %"struct.std::chrono::duration.115"* %5, i32 0, i32 0
  %7 = load i64*, i64** %4, align 8
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_client_subscriber.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__cxx_global_var_init.2()
  call void @__cxx_global_var_init.4()
  call void @__cxx_global_var_init.6()
  call void @__cxx_global_var_init.8()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readnone }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readnone willreturn }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = !{!"branch_weights", i32 1, i32 1048575}
!10 = distinct !{!10, !7}
