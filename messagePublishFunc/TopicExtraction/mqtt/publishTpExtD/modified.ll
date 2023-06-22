; ModuleID = 'clientOrPublisher.ll'
source_filename = "publisher.cpp"
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
%"struct.std::__cxx11::_List_base<std::shared_ptr<mqtt::token>, std::allocator<std::shared_ptr<mqtt::token>>>::_List_impl" = type { %"struct.std::_List_node" }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%"class.std::__cxx11::list.68" = type { %"class.std::__cxx11::_List_base.69" }
%"class.std::__cxx11::_List_base.69" = type { %"struct.std::__cxx11::_List_base<std::shared_ptr<mqtt::delivery_token>, std::allocator<std::shared_ptr<mqtt::delivery_token>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::shared_ptr<mqtt::delivery_token>, std::allocator<std::shared_ptr<mqtt::delivery_token>>>::_List_impl" = type { %"struct.std::_List_node" }
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
%class.callback = type { %"class.mqtt::callback" }
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
%"class.std::shared_ptr.111" = type { %"class.std::__shared_ptr.112" }
%"class.std::__shared_ptr.112" = type { %"class.mqtt::message"*, %"class.std::__shared_count" }
%"class.std::shared_ptr.114" = type { %"class.std::__shared_ptr.115" }
%"class.std::__shared_ptr.115" = type { %"class.mqtt::delivery_token"*, %"class.std::__shared_count" }
%"class.mqtt::delivery_token" = type { %"class.mqtt::token", %"class.std::shared_ptr.12" }
%"class.mqtt::exception" = type { %"class.std::runtime_error", i32, i32, %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { i32 (...)** }
%"struct.std::__cow_string" = type { %union.anon.117 }
%union.anon.117 = type { i8* }
%"class.mqtt::iclient_persistence" = type { i32 (...)** }
%"class.std::__shared_ptr_access.17" = type { i8 }
%"class.std::__shared_ptr_access.113" = type { i8 }
%"class.std::__shared_ptr_access.116" = type { i8 }
%"class.std::shared_ptr.126" = type { %"class.std::__shared_ptr.127" }
%"class.std::__shared_ptr.127" = type { %"class.std::__cxx11::basic_string"*, %"class.std::__shared_count" }
%"class.mqtt::disconnect_options" = type { %struct.MQTTAsync_disconnectOptions, %"class.std::shared_ptr.15", %"class.mqtt::properties" }
%struct.MQTTAsync_disconnectOptions = type { [4 x i8], i32, i32, void (i8*, %struct.MQTTAsync_successData*)*, void (i8*, %struct.MQTTAsync_failureData*)*, i8*, %struct.MQTTProperties, i32, void (i8*, %struct.MQTTAsync_successData5*)*, void (i8*, %struct.MQTTAsync_failureData5*)* }
%"class.std::allocator.108" = type { i8 }
%"class.__gnu_cxx::new_allocator.109" = type { i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf.118" }
%"struct.__gnu_cxx::__aligned_membuf.118" = type { [64 x i8] }
%"class.std::allocator.102" = type { i8 }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.__gnu_cxx::new_allocator.103" = type { i8 }
%"class.std::allocator.98" = type { i8 }
%"class.__gnu_cxx::new_allocator.99" = type { i8 }
%"class.std::allocator.119" = type { i8 }
%"struct.std::_Sp_make_shared_tag" = type { i8 }
%"class.__gnu_cxx::new_allocator.120" = type { i8 }
%"class.std::type_info" = type { i32 (...)**, i8* }
%"class.std::allocator.122" = type { i8 }
%"struct.std::__allocated_ptr" = type { %"class.std::allocator.122"*, %"class.std::_Sp_counted_ptr_inplace"* }
%"class.std::_Sp_counted_ptr_inplace" = type { %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl" }
%"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl" = type { %"struct.__gnu_cxx::__aligned_buffer" }
%"struct.__gnu_cxx::__aligned_buffer" = type { %"union.std::aligned_storage<120, 8>::type" }
%"union.std::aligned_storage<120, 8>::type" = type { [120 x i8] }
%"class.__gnu_cxx::new_allocator.123" = type { i8 }
%"class.std::_Mutex_base" = type { i8 }
%"struct.std::_Sp_ebo_helper" = type { i8 }
%"class.std::__shared_ptr_access" = type { i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%"struct.std::__false_type" = type { i8 }
%"struct.std::forward_iterator_tag" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"class.std::allocator.25" = type { i8 }
%"class.__gnu_cxx::new_allocator.26" = type { i8 }
%"class.std::__shared_ptr_access.128" = type { i8 }
%"class.std::allocator.129" = type { i8 }
%"struct.std::__allocated_ptr.132" = type { %"class.std::allocator.129"*, %"class.std::_Sp_counted_ptr_inplace.133"* }
%"class.std::_Sp_counted_ptr_inplace.133" = type { %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl" }
%"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl" = type { %"struct.__gnu_cxx::__aligned_buffer.135" }
%"struct.__gnu_cxx::__aligned_buffer.135" = type { %"union.std::aligned_storage<32, 8>::type" }
%"union.std::aligned_storage<32, 8>::type" = type { [32 x i8] }
%"class.__gnu_cxx::new_allocator.130" = type { i8 }
%"struct.std::_Sp_ebo_helper.134" = type { i8 }
%"class.std::__shared_ptr_access.14" = type { i8 }
%"class.std::__cxx11::basic_string.0" = type opaque

$_ZN8callbackC1Ev = comdat any

$_ZN4mqtt15connect_options23set_keep_alive_intervalEi = comdat any

$_ZN4mqtt15connect_options17set_clean_sessionEb = comdat any

$_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv = comdat any

$_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev = comdat any

$_ZN4mqtt15connect_optionsD2Ev = comdat any

$_ZN4mqtt12make_messageENS_10buffer_refIcEES1_ = comdat any

$_ZN4mqtt10buffer_refIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4mqtt10buffer_refIcED2Ev = comdat any

$_ZNKSt19__shared_ptr_accessIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv = comdat any

$_ZN4mqtt7message7set_qosEi = comdat any

$_ZNSt10shared_ptrIKN4mqtt7messageEEC2IS1_vEERKS_IT_E = comdat any

$_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv = comdat any

$_ZNSt10shared_ptrIN4mqtt14delivery_tokenEED2Ev = comdat any

$_ZNSt10shared_ptrIKN4mqtt7messageEED2Ev = comdat any

$_ZN4mqtt12async_client10disconnectEv = comdat any

$_ZNSt10shared_ptrIN4mqtt7messageEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN8callbackD1Ev = comdat any

$_ZN4mqtt8callbackC2Ev = comdat any

$_ZN8callbackD0Ev = comdat any

$_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE = comdat any

$_ZN8callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE = comdat any

$_ZN4mqtt8callbackD2Ev = comdat any

$_ZN4mqtt8callbackD0Ev = comdat any

$_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE = comdat any

$_ZTv0_n24_N8callbackD0Ev = comdat any

$_ZTv0_n40_N8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv = comdat any

$_ZTv0_n56_N8callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE = comdat any

$_ZN4mqtt6to_intEb = comdat any

$_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv = comdat any

$_ZN4mqtt21name_value_collectionD2Ev = comdat any

$_ZN4mqtt10propertiesD2Ev = comdat any

$_ZNSt10shared_ptrIKN4mqtt17string_collectionEED2Ev = comdat any

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

$_ZN4mqtt7message6createENS_10buffer_refIcEES2_ = comdat any

$_ZSt4moveIRN4mqtt10buffer_refIcEEEONSt16remove_referenceIT_E4typeEOS5_ = comdat any

$_ZN4mqtt10buffer_refIcEC2EOS1_ = comdat any

$_ZSt11make_sharedIN4mqtt7messageEJNS0_10buffer_refIcEES3_RKiRKbEESt10shared_ptrIT_EDpOT0_ = comdat any

$_ZSt15allocate_sharedIN4mqtt7messageESaIS1_EJNS0_10buffer_refIcEES4_RKiRKbEESt10shared_ptrIT_ERKT0_DpOT1_ = comdat any

$_ZNSaIN4mqtt7messageEEC2Ev = comdat any

$_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZSt7forwardIRKbEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSaIN4mqtt7messageEED2Ev = comdat any

$_ZNSt10shared_ptrIN4mqtt7messageEEC2ISaIS1_EJNS0_10buffer_refIcEES6_RKiRKbEEESt19_Sp_make_shared_tagRKT_DpOT0_ = comdat any

$_ZNSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS1_EJNS0_10buffer_refIcEES8_RKiRKbEEESt19_Sp_make_shared_tagRKT_DpOT0_ = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN4mqtt7messageESaIS5_EJNS4_10buffer_refIcEES8_RKiRKbEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_ = comdat any

$_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXntsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_ = comdat any

$_ZNSaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS1_EERKSaIT_E = comdat any

$_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_ = comdat any

$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv = comdat any

$_ZSt4moveIRKSaIN4mqtt7messageEEEONSt16remove_referenceIT_E4typeEOS6_ = comdat any

$_ZNSaIN4mqtt7messageEEC2ERKS1_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEC2IJNS0_10buffer_refIcEES8_RKiRKbEEES2_DpOT_ = comdat any

$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn = comdat any

$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev = comdat any

$_ZNSaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEEC2Ev = comdat any

$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS7_m = comdat any

$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS7_PS6_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEE8max_sizeEv = comdat any

$_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS8_ = comdat any

$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_raw_ptrEPS6_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEEC2ERKS3_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES2_ = comdat any

$_ZNSt16allocator_traitsISaIN4mqtt7messageEEE9constructIS1_JNS0_10buffer_refIcEES6_RKiRKbEEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt14_Sp_ebo_helperILi0ESaIN4mqtt7messageEELb1EEC2ERKS2_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEE9constructIS2_JNS1_10buffer_refIcEES6_RKiRKbEEEvPT_DpOT0_ = comdat any

$_ZN4mqtt10propertiesC2Ev = comdat any

$_ZN9__gnu_cxx16__aligned_bufferIN4mqtt7messageEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_bufferIN4mqtt7messageEE7_M_addrEv = comdat any

$_ZNSt14_Sp_ebo_helperILi0ESaIN4mqtt7messageEELb1EED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN4mqtt7messageEEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEE7destroyIS2_EEvPT_ = comdat any

$_ZN4mqtt7messageD2Ev = comdat any

$_ZNSt14_Sp_ebo_helperILi0ESaIN4mqtt7messageEELb1EE6_S_getERS3_ = comdat any

$_ZNKSt9type_infoeqERKS_ = comdat any

$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS7_PS6_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEE10deallocateEPS6_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEEC2Ev = comdat any

$_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_ = comdat any

$_ZSt4moveIRSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEONSt16remove_referenceIT_E4typeEOSB_ = comdat any

$_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEC2EOS9_ = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_ = comdat any

$_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN4mqtt7message12validate_qosEi = comdat any

$_ZN4mqtt9exceptionC2EiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4mqtt9exceptionD2Ev = comdat any

$_ZN4mqtt9exception15printable_errorEiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4mqtt9exceptionD0Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZNSt7__cxx119to_stringEi = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZN4mqtt9exception15reason_code_strB5cxx11Ei = comdat any

$_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_ = comdat any

$_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_ = comdat any

$_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_ = comdat any

$_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZNSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN4mqtt18disconnect_optionsD2Ev = comdat any

$_ZTv0_n80_N4mqtt12async_client10disconnectEv = comdat any

$_ZNSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN8callbackD2Ev = comdat any

$_ZTv0_n24_N8callbackD1Ev = comdat any

$_ZNKSt19__shared_ptr_accessIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv = comdat any

$_ZNKSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv = comdat any

$_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv = comdat any

$_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv = comdat any

$_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv = comdat any

$_ZNKSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv = comdat any

$_ZSt11make_sharedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EESt10shared_ptrIT_EDpOT0_ = comdat any

$_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_vEEOS_IT_E = comdat any

$_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZSt15allocate_sharedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EJRKS5_EESt10shared_ptrIT_ERKT0_DpOT1_ = comdat any

$_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev = comdat any

$_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE = comdat any

$_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ISaIS5_EJRKS5_EEESt19_Sp_make_shared_tagRKT_DpOT0_ = comdat any

$_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS5_EJRKS5_EEESt19_Sp_make_shared_tagRKT_DpOT0_ = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EJRKS9_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_ = comdat any

$_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS5_S5_EENSt9enable_ifIXntsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_ = comdat any

$_ZNSaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS5_EERKSaIT_E = comdat any

$_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_ = comdat any

$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv = comdat any

$_ZSt4moveIRKSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEONSt16remove_referenceIT_E4typeEOSA_ = comdat any

$_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS5_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRKS5_EEES6_DpOT_ = comdat any

$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn = comdat any

$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev = comdat any

$_ZNSaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEEC2Ev = comdat any

$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m = comdat any

$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERSB_PSA_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEE8max_sizeEv = comdat any

$_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RSC_ = comdat any

$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_raw_ptrEPSA_ = comdat any

$_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES6_ = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt14_Sp_ebo_helperILi0ESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2ERKS6_ = comdat any

$_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_ = comdat any

$_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv = comdat any

$_ZNSt14_Sp_ebo_helperILi0ESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv = comdat any

$_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS6_EEvPT_ = comdat any

$_ZNSt14_Sp_ebo_helperILi0ESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE6_S_getERS7_ = comdat any

$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERSB_PSA_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEE10deallocateEPSA_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev = comdat any

$_ZSt4moveIRSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEONSt16remove_referenceIT_E4typeEOSA_ = comdat any

$_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEC2IS5_vEEOS_IT_LS8_2EE = comdat any

$_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEERKS_IT_LS4_2EE = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv = comdat any

$_ZTSN4mqtt9exceptionE = comdat any

$_ZTIN4mqtt9exceptionE = comdat any

$_ZTV8callback = comdat any

$_ZTT8callback = comdat any

$_ZTS8callback = comdat any

$_ZTSN4mqtt8callbackE = comdat any

$_ZTIN4mqtt8callbackE = comdat any

$_ZTI8callback = comdat any

$_ZTVN4mqtt8callbackE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZTISt19_Sp_make_shared_tag = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVN4mqtt9exceptionE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN4mqttL11VERSION_STRB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"Paho MQTT C++ (mqttpp) v. 1.2\00", align 1
@_ZN4mqttL9COPYRIGHTB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Copyright (c) 2013-2020 Frank Pagliughi\00", align 1
@_ZL14SERVER_ADDRESSB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"tcp://localhost:1883\00", align 1
@_ZL9CLIENT_IDB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"mqtt_cpp_async_publisher\00", align 1
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
@.str.13 = private unnamed_addr constant [13 x i8] c"Hello, MQTT!\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Published message: \00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Disconnecting from MQTT server...\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@_ZTV8callback = linkonce_odr dso_local unnamed_addr constant { [14 x i8*] } { [14 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTI8callback to i8*), i8* bitcast (void (%class.callback*)* @_ZN8callbackD1Ev to i8*), i8* bitcast (void (%class.callback*)* @_ZN8callbackD0Ev to i8*), i8* bitcast (void (%"class.mqtt::callback"*, %"class.std::__cxx11::basic_string"*)* @_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i8*), i8* bitcast (void (%class.callback*, %"class.std::__cxx11::basic_string"*)* @_ZN8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i8*), i8* bitcast (void (%"class.mqtt::callback"*, %"class.std::shared_ptr.12"*)* @_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE to i8*), i8* bitcast (void (%class.callback*, %"class.std::shared_ptr.114"*)* @_ZN8callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE to i8*)] }, comdat, align 8
@_ZTT8callback = linkonce_odr dso_local unnamed_addr constant [2 x i8*] [i8* bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTV8callback, i32 0, inrange i32 0, i32 8) to i8*), i8* bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTV8callback, i32 0, inrange i32 0, i32 8) to i8*)], comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global i8*
@_ZTS8callback = linkonce_odr dso_local constant [10 x i8] c"8callback\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTSN4mqtt8callbackE = linkonce_odr dso_local constant [17 x i8] c"N4mqtt8callbackE\00", comdat, align 1
@_ZTIN4mqtt8callbackE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTSN4mqtt8callbackE, i32 0, i32 0) }, comdat, align 8
@_ZTI8callback = linkonce_odr dso_local constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_ZTS8callback, i32 0, i32 0), i32 0, i32 1, i8* bitcast ({ i8*, i8* }* @_ZTIN4mqtt8callbackE to i8*), i64 -16381 }, comdat, align 8
@_ZTVN4mqtt8callbackE = linkonce_odr dso_local unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN4mqtt8callbackE to i8*), i8* bitcast (void (%"class.mqtt::callback"*)* @_ZN4mqtt8callbackD2Ev to i8*), i8* bitcast (void (%"class.mqtt::callback"*)* @_ZN4mqtt8callbackD0Ev to i8*), i8* bitcast (void (%"class.mqtt::callback"*, %"class.std::__cxx11::basic_string"*)* @_ZN4mqtt8callback9connectedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i8*), i8* bitcast (void (%"class.mqtt::callback"*, %"class.std::__cxx11::basic_string"*)* @_ZN4mqtt8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i8*), i8* bitcast (void (%"class.mqtt::callback"*, %"class.std::shared_ptr.12"*)* @_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE to i8*), i8* bitcast (void (%"class.mqtt::callback"*, %"class.std::shared_ptr.114"*)* @_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE to i8*)] }, comdat, align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"\0AConnection lost\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"\09cause: \00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"\0ADelivery complete for token: \00", align 1
@_ZZL18__gthread_active_pvE20__gthread_active_ptr = internal constant i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), align 8
@_ZN4mqtt7message8DFLT_QOSE = available_externally constant i32 0, align 4
@_ZN4mqtt7message13DFLT_RETAINEDE = available_externally constant i8 0, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr dso_local constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZTISt19_Sp_make_shared_tag = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @_ZTSSt19_Sp_make_shared_tag, i32 0, i32 0) }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EED2Ev to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EED0Ev to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv to i8*), i8* bitcast (i8* (%"class.std::_Sp_counted_ptr_inplace"*, %"class.std::type_info"*)* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info to i8*)] }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [81 x i8] c"St23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0) }, comdat, align 8
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE to i8*) }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @_ZTSSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE to i8*) }, comdat, align 8
@_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE to i8*), i8* bitcast (void (%"class.std::_Sp_counted_base"*)* @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev to i8*), i8* bitcast (void (%"class.std::_Sp_counted_base"*)* @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%"class.std::_Sp_counted_base"*)* @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"Bad QoS\00", align 1
@_ZTVN4mqtt9exceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*), i8* bitcast (void (%"class.mqtt::exception"*)* @_ZN4mqtt9exceptionD2Ev to i8*), i8* bitcast (void (%"class.mqtt::exception"*)* @_ZN4mqtt9exceptionD0Ev to i8*), i8* bitcast (i8* (%"class.std::runtime_error"*)* @_ZNKSt13runtime_error4whatEv to i8*)] }, comdat, align 8
@.str.22 = private unnamed_addr constant [13 x i8] c"MQTT error [\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c". Reason: \00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace.133"*)* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED2Ev to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace.133"*)* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED0Ev to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace.133"*)* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace.133"*)* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv to i8*), i8* bitcast (i8* (%"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::type_info"*)* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info to i8*)] }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [118 x i8] c"St23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @_ZTSSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE to i8*) }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_publisher.cpp, i8* null }]
@value = private unnamed_addr constant [30 x i8] c"publish get_topic value:  %s\0A\00", align 1

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
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL9CLIENT_IDB5cxx11, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1)
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
  %7 = alloca %class.callback, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.mqtt::connect_options", align 8
  %11 = alloca %"class.std::shared_ptr.15", align 8
  %12 = alloca %"class.mqtt::connect_options", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::allocator", align 1
  %15 = alloca %"class.std::shared_ptr.111", align 8
  %16 = alloca %"class.mqtt::buffer_ref", align 8
  %17 = alloca %"class.mqtt::buffer_ref", align 8
  %18 = alloca %"class.std::shared_ptr.114", align 8
  %19 = alloca %"class.std::shared_ptr.12", align 8
  %20 = alloca %"class.std::shared_ptr.15", align 8
  %21 = alloca %"class.mqtt::exception"*, align 8
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @_ZN4mqtt12async_clientC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PNS_19iclient_persistenceE(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL14SERVER_ADDRESSB5cxx11, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL9CLIENT_IDB5cxx11, %"class.mqtt::iclient_persistence"* noundef null)
  call void @_ZN8callbackC1Ev(%class.callback* noundef nonnull align 8 dereferenceable(8) %7) #3
  %23 = bitcast %class.callback* %7 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr i8, i8* %24, i64 -64
  %26 = bitcast i8* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = bitcast %class.callback* %7 to i8*
  %29 = getelementptr inbounds i8, i8* %28, i64 %27
  %30 = bitcast i8* %29 to %"class.mqtt::callback"*
  invoke void @_ZN4mqtt12async_client12set_callbackERNS_8callbackE(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6, %"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %30)
          to label %31 unwind label %96

31:                                               ; preds = %2
  invoke void @_ZN4mqtt15connect_optionsC1Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10)
          to label %32 unwind label %96

32:                                               ; preds = %31
  invoke void @_ZN4mqtt15connect_options23set_keep_alive_intervalEi(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10, i32 noundef 20)
          to label %33 unwind label %100

33:                                               ; preds = %32
  invoke void @_ZN4mqtt15connect_options17set_clean_sessionEb(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10, i1 noundef zeroext true)
          to label %34 unwind label %100

34:                                               ; preds = %33
  %35 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
          to label %36 unwind label %104

36:                                               ; preds = %34
  %37 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %35, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL14SERVER_ADDRESSB5cxx11)
          to label %38 unwind label %104

38:                                               ; preds = %36
  %39 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %37, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
          to label %40 unwind label %104

40:                                               ; preds = %38
  %41 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %39, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %42 unwind label %104

42:                                               ; preds = %40
  invoke void @_ZN4mqtt15connect_optionsC1ERKS0_(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %12, %"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10)
          to label %43 unwind label %104

43:                                               ; preds = %42
  invoke void @_ZN4mqtt12async_client7connectENS_15connect_optionsE(%"class.std::shared_ptr.15"* sret(%"class.std::shared_ptr.15") align 8 %11, %"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6, %"class.mqtt::connect_options"* noundef %12)
          to label %44 unwind label %108

44:                                               ; preds = %43
  %45 = bitcast %"class.std::shared_ptr.15"* %11 to %"class.std::__shared_ptr_access.17"*
  %46 = call noundef %"class.mqtt::token"* @_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.17"* noundef nonnull align 1 dereferenceable(1) %45) #3
  %47 = bitcast %"class.mqtt::token"* %46 to void (%"class.mqtt::token"*)***
  %48 = load void (%"class.mqtt::token"*)**, void (%"class.mqtt::token"*)*** %47, align 8
  %49 = getelementptr inbounds void (%"class.mqtt::token"*)*, void (%"class.mqtt::token"*)** %48, i64 11
  %50 = load void (%"class.mqtt::token"*)*, void (%"class.mqtt::token"*)** %49, align 8
  invoke void %50(%"class.mqtt::token"* noundef nonnull align 8 dereferenceable(232) %46)
          to label %51 unwind label %112

51:                                               ; preds = %44
  call void @_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev(%"class.std::shared_ptr.15"* noundef nonnull align 8 dereferenceable(16) %11) #3
  call void @_ZN4mqtt15connect_optionsD2Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %12) #3
  %52 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
          to label %53 unwind label %104

53:                                               ; preds = %51
  %54 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %52, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %55 unwind label %104

55:                                               ; preds = %53
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14)
          to label %56 unwind label %117

56:                                               ; preds = %55
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14) #3
  invoke void @_ZN4mqtt10buffer_refIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %16, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) @_ZL5TOPICB5cxx11)
          to label %57 unwind label %121

57:                                               ; preds = %56
  invoke void @_ZN4mqtt10buffer_refIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %17, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13)
          to label %58 unwind label %125

58:                                               ; preds = %57
  %59 = load %"class.mqtt::buffer_ref", %"class.mqtt::buffer_ref"* %16, align 8
  %60 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.mqtt::buffer_ref" %59)
  %value = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @value, i32 0, i32 0), i8* %60)
  invoke void @_ZN4mqtt12make_messageENS_10buffer_refIcEES1_(%"class.std::shared_ptr.111"* sret(%"class.std::shared_ptr.111") align 8 %15, %"class.mqtt::buffer_ref"* noundef %16, %"class.mqtt::buffer_ref"* noundef %17)
          to label %61 unwind label %129

61:                                               ; preds = %58
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %17) #3
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %16) #3
  %62 = bitcast %"class.std::shared_ptr.111"* %15 to %"class.std::__shared_ptr_access.113"*
  %63 = call noundef %"class.mqtt::message"* @_ZNKSt19__shared_ptr_accessIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.113"* noundef nonnull align 1 dereferenceable(1) %62) #3
  invoke void @_ZN4mqtt7message7set_qosEi(%"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120) %63, i32 noundef 0)
          to label %64 unwind label %134

64:                                               ; preds = %61
  call void @_ZNSt10shared_ptrIKN4mqtt7messageEEC2IS1_vEERKS_IT_E(%"class.std::shared_ptr.12"* noundef nonnull align 8 dereferenceable(16) %19, %"class.std::shared_ptr.111"* noundef nonnull align 8 dereferenceable(16) %15) #3
  invoke void @_ZN4mqtt12async_client7publishESt10shared_ptrIKNS_7messageEE(%"class.std::shared_ptr.114"* sret(%"class.std::shared_ptr.114") align 8 %18, %"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6, %"class.std::shared_ptr.12"* noundef %19)
          to label %65 unwind label %138

65:                                               ; preds = %64
  %66 = bitcast %"class.std::shared_ptr.114"* %18 to %"class.std::__shared_ptr_access.116"*
  %67 = call noundef %"class.mqtt::delivery_token"* @_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.116"* noundef nonnull align 1 dereferenceable(1) %66) #3
  %68 = bitcast %"class.mqtt::delivery_token"* %67 to %"class.mqtt::token"*
  %69 = bitcast %"class.mqtt::token"* %68 to void (%"class.mqtt::token"*)***
  %70 = load void (%"class.mqtt::token"*)**, void (%"class.mqtt::token"*)*** %69, align 8
  %71 = getelementptr inbounds void (%"class.mqtt::token"*)*, void (%"class.mqtt::token"*)** %70, i64 11
  %72 = load void (%"class.mqtt::token"*)*, void (%"class.mqtt::token"*)** %71, align 8
  invoke void %72(%"class.mqtt::token"* noundef nonnull align 8 dereferenceable(232) %68)
          to label %73 unwind label %142

73:                                               ; preds = %65
  call void @_ZNSt10shared_ptrIN4mqtt14delivery_tokenEED2Ev(%"class.std::shared_ptr.114"* noundef nonnull align 8 dereferenceable(16) %18) #3
  call void @_ZNSt10shared_ptrIKN4mqtt7messageEED2Ev(%"class.std::shared_ptr.12"* noundef nonnull align 8 dereferenceable(16) %19) #3
  %74 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
          to label %75 unwind label %134

75:                                               ; preds = %73
  %76 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %74, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13)
          to label %77 unwind label %134

77:                                               ; preds = %75
  %78 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %76, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %79 unwind label %134

79:                                               ; preds = %77
  %80 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
          to label %81 unwind label %134

81:                                               ; preds = %79
  %82 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %80, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %83 unwind label %134

83:                                               ; preds = %81
  invoke void @_ZN4mqtt12async_client10disconnectEv(%"class.std::shared_ptr.15"* sret(%"class.std::shared_ptr.15") align 8 %20, %"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6)
          to label %84 unwind label %134

84:                                               ; preds = %83
  %85 = bitcast %"class.std::shared_ptr.15"* %20 to %"class.std::__shared_ptr_access.17"*
  %86 = call noundef %"class.mqtt::token"* @_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.17"* noundef nonnull align 1 dereferenceable(1) %85) #3
  %87 = bitcast %"class.mqtt::token"* %86 to void (%"class.mqtt::token"*)***
  %88 = load void (%"class.mqtt::token"*)**, void (%"class.mqtt::token"*)*** %87, align 8
  %89 = getelementptr inbounds void (%"class.mqtt::token"*)*, void (%"class.mqtt::token"*)** %88, i64 11
  %90 = load void (%"class.mqtt::token"*)*, void (%"class.mqtt::token"*)** %89, align 8
  invoke void %90(%"class.mqtt::token"* noundef nonnull align 8 dereferenceable(232) %86)
          to label %91 unwind label %147

91:                                               ; preds = %84
  call void @_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev(%"class.std::shared_ptr.15"* noundef nonnull align 8 dereferenceable(16) %20) #3
  %92 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
          to label %93 unwind label %134

93:                                               ; preds = %91
  %94 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %92, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %95 unwind label %134

95:                                               ; preds = %93
  call void @_ZNSt10shared_ptrIN4mqtt7messageEED2Ev(%"class.std::shared_ptr.111"* noundef nonnull align 8 dereferenceable(16) %15) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #3
  br label %180

96:                                               ; preds = %31, %2
  %97 = landingpad { i8*, i32 }
          cleanup
  %98 = extractvalue { i8*, i32 } %97, 0
  store i8* %98, i8** %8, align 8
  %99 = extractvalue { i8*, i32 } %97, 1
  store i32 %99, i32* %9, align 4
  br label %184

100:                                              ; preds = %173, %33, %32
  %101 = landingpad { i8*, i32 }
          cleanup
  %102 = extractvalue { i8*, i32 } %101, 0
  store i8* %102, i8** %8, align 8
  %103 = extractvalue { i8*, i32 } %101, 1
  store i32 %103, i32* %9, align 4
  br label %183

104:                                              ; preds = %53, %51, %42, %40, %38, %36, %34
  %105 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %106 = extractvalue { i8*, i32 } %105, 0
  store i8* %106, i8** %8, align 8
  %107 = extractvalue { i8*, i32 } %105, 1
  store i32 %107, i32* %9, align 4
  br label %153

108:                                              ; preds = %43
  %109 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %110 = extractvalue { i8*, i32 } %109, 0
  store i8* %110, i8** %8, align 8
  %111 = extractvalue { i8*, i32 } %109, 1
  store i32 %111, i32* %9, align 4
  br label %116

112:                                              ; preds = %44
  %113 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %114 = extractvalue { i8*, i32 } %113, 0
  store i8* %114, i8** %8, align 8
  %115 = extractvalue { i8*, i32 } %113, 1
  store i32 %115, i32* %9, align 4
  call void @_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev(%"class.std::shared_ptr.15"* noundef nonnull align 8 dereferenceable(16) %11) #3
  br label %116

116:                                              ; preds = %112, %108
  call void @_ZN4mqtt15connect_optionsD2Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %12) #3
  br label %153

117:                                              ; preds = %55
  %118 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %119 = extractvalue { i8*, i32 } %118, 0
  store i8* %119, i8** %8, align 8
  %120 = extractvalue { i8*, i32 } %118, 1
  store i32 %120, i32* %9, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14) #3
  br label %153

121:                                              ; preds = %56
  %122 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %123 = extractvalue { i8*, i32 } %122, 0
  store i8* %123, i8** %8, align 8
  %124 = extractvalue { i8*, i32 } %122, 1
  store i32 %124, i32* %9, align 4
  br label %152

125:                                              ; preds = %57
  %126 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %127 = extractvalue { i8*, i32 } %126, 0
  store i8* %127, i8** %8, align 8
  %128 = extractvalue { i8*, i32 } %126, 1
  store i32 %128, i32* %9, align 4
  br label %133

129:                                              ; preds = %58
  %130 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %131 = extractvalue { i8*, i32 } %130, 0
  store i8* %131, i8** %8, align 8
  %132 = extractvalue { i8*, i32 } %130, 1
  store i32 %132, i32* %9, align 4
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %17) #3
  br label %133

133:                                              ; preds = %129, %125
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %16) #3
  br label %152

134:                                              ; preds = %93, %91, %83, %81, %79, %77, %75, %73, %61
  %135 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %136 = extractvalue { i8*, i32 } %135, 0
  store i8* %136, i8** %8, align 8
  %137 = extractvalue { i8*, i32 } %135, 1
  store i32 %137, i32* %9, align 4
  br label %151

138:                                              ; preds = %64
  %139 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %140 = extractvalue { i8*, i32 } %139, 0
  store i8* %140, i8** %8, align 8
  %141 = extractvalue { i8*, i32 } %139, 1
  store i32 %141, i32* %9, align 4
  br label %146

142:                                              ; preds = %65
  %143 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %144 = extractvalue { i8*, i32 } %143, 0
  store i8* %144, i8** %8, align 8
  %145 = extractvalue { i8*, i32 } %143, 1
  store i32 %145, i32* %9, align 4
  call void @_ZNSt10shared_ptrIN4mqtt14delivery_tokenEED2Ev(%"class.std::shared_ptr.114"* noundef nonnull align 8 dereferenceable(16) %18) #3
  br label %146

146:                                              ; preds = %142, %138
  call void @_ZNSt10shared_ptrIKN4mqtt7messageEED2Ev(%"class.std::shared_ptr.12"* noundef nonnull align 8 dereferenceable(16) %19) #3
  br label %151

147:                                              ; preds = %84
  %148 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)
  %149 = extractvalue { i8*, i32 } %148, 0
  store i8* %149, i8** %8, align 8
  %150 = extractvalue { i8*, i32 } %148, 1
  store i32 %150, i32* %9, align 4
  call void @_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev(%"class.std::shared_ptr.15"* noundef nonnull align 8 dereferenceable(16) %20) #3
  br label %151

151:                                              ; preds = %147, %146, %134
  call void @_ZNSt10shared_ptrIN4mqtt7messageEED2Ev(%"class.std::shared_ptr.111"* noundef nonnull align 8 dereferenceable(16) %15) #3
  br label %152

152:                                              ; preds = %151, %133, %121
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #3
  br label %153

153:                                              ; preds = %152, %117, %116, %104
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @llvm.eh.typeid.for(i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*)) #3
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %183

157:                                              ; preds = %153
  %158 = load i8*, i8** %8, align 8
  %159 = call i8* @__cxa_begin_catch(i8* %158) #3
  %160 = bitcast i8* %159 to %"class.mqtt::exception"*
  store %"class.mqtt::exception"* %160, %"class.mqtt::exception"** %21, align 8
  %161 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
          to label %162 unwind label %174

162:                                              ; preds = %157
  %163 = load %"class.mqtt::exception"*, %"class.mqtt::exception"** %21, align 8
  %164 = bitcast %"class.mqtt::exception"* %163 to %"class.std::runtime_error"*
  %165 = bitcast %"class.std::runtime_error"* %164 to i8* (%"class.std::runtime_error"*)***
  %166 = load i8* (%"class.std::runtime_error"*)**, i8* (%"class.std::runtime_error"*)*** %165, align 8
  %167 = getelementptr inbounds i8* (%"class.std::runtime_error"*)*, i8* (%"class.std::runtime_error"*)** %166, i64 2
  %168 = load i8* (%"class.std::runtime_error"*)*, i8* (%"class.std::runtime_error"*)** %167, align 8
  %169 = call noundef i8* %168(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16) %164) #3
  %170 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %161, i8* noundef %169)
          to label %171 unwind label %174

171:                                              ; preds = %162
  %172 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %170, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %173 unwind label %174

173:                                              ; preds = %171
  store i32 1, i32* %3, align 4
  store i32 1, i32* %22, align 4
  invoke void @__cxa_end_catch()
          to label %178 unwind label %100

174:                                              ; preds = %171, %162, %157
  %175 = landingpad { i8*, i32 }
          cleanup
  %176 = extractvalue { i8*, i32 } %175, 0
  store i8* %176, i8** %8, align 8
  %177 = extractvalue { i8*, i32 } %175, 1
  store i32 %177, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %179 unwind label %190

178:                                              ; preds = %173
  br label %181

179:                                              ; preds = %174
  br label %183

180:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %181

181:                                              ; preds = %180, %178
  call void @_ZN4mqtt15connect_optionsD2Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10) #3
  call void @_ZN8callbackD1Ev(%class.callback* noundef nonnull align 8 dereferenceable(8) %7) #3
  call void @_ZN4mqtt12async_clientD1Ev(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6) #3
  %182 = load i32, i32* %3, align 4
  ret i32 %182

183:                                              ; preds = %179, %153, %100
  call void @_ZN4mqtt15connect_optionsD2Ev(%"class.mqtt::connect_options"* noundef nonnull align 8 dereferenceable(944) %10) #3
  br label %184

184:                                              ; preds = %183, %96
  call void @_ZN8callbackD1Ev(%class.callback* noundef nonnull align 8 dereferenceable(8) %7) #3
  call void @_ZN4mqtt12async_clientD1Ev(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %6) #3
  br label %185

185:                                              ; preds = %184
  %186 = load i8*, i8** %8, align 8
  %187 = load i32, i32* %9, align 4
  %188 = insertvalue { i8*, i32 } undef, i8* %186, 0
  %189 = insertvalue { i8*, i32 } %188, i32 %187, 1
  resume { i8*, i32 } %189

190:                                              ; preds = %174
  %191 = landingpad { i8*, i32 }
          catch i8* null
  %192 = extractvalue { i8*, i32 } %191, 0
  call void @__clang_call_terminate(i8* %192) #17
  unreachable
}

declare void @_ZN4mqtt12async_clientC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PNS_19iclient_persistenceE(%"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.mqtt::iclient_persistence"* noundef) unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN8callbackC1Ev(%class.callback* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.callback*, align 8
  store %class.callback* %0, %class.callback** %2, align 8
  %3 = load %class.callback*, %class.callback** %2, align 8
  %4 = bitcast %class.callback* %3 to %"class.mqtt::callback"*
  call void @_ZN4mqtt8callbackC2Ev(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %4) #3
  %5 = bitcast %class.callback* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTV8callback, i32 0, inrange i32 0, i32 8) to i32 (...)**), i32 (...)*** %5, align 8
  %6 = bitcast %class.callback* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [14 x i8*] }, { [14 x i8*] }* @_ZTV8callback, i32 0, inrange i32 0, i32 8) to i32 (...)**), i32 (...)*** %6, align 8
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::token"* @_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.17"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access.17"*, align 8
  store %"class.std::__shared_ptr_access.17"* %0, %"class.std::__shared_ptr_access.17"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access.17"*, %"class.std::__shared_ptr_access.17"** %2, align 8
  %4 = call noundef %"class.mqtt::token"* @_ZNKSt19__shared_ptr_accessIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access.17"* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret %"class.mqtt::token"* %4
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

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt12make_messageENS_10buffer_refIcEES1_(%"class.std::shared_ptr.111"* noalias sret(%"class.std::shared_ptr.111") align 8 %0, %"class.mqtt::buffer_ref"* noundef %1, %"class.mqtt::buffer_ref"* noundef %2) #7 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca i8*, align 8
  %5 = alloca %"class.mqtt::buffer_ref", align 8
  %6 = alloca %"class.mqtt::buffer_ref", align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %"class.std::shared_ptr.111"* %0 to i8*
  store i8* %9, i8** %4, align 8
  %10 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt4moveIRN4mqtt10buffer_refIcEEEONSt16remove_referenceIT_E4typeEOS5_(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %1) #3
  call void @_ZN4mqtt10buffer_refIcEC2EOS1_(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %5, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %10) #3
  %11 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt4moveIRN4mqtt10buffer_refIcEEEONSt16remove_referenceIT_E4typeEOS5_(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %2) #3
  call void @_ZN4mqtt10buffer_refIcEC2EOS1_(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %6, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %11) #3
  invoke void @_ZN4mqtt7message6createENS_10buffer_refIcEES2_(%"class.std::shared_ptr.111"* sret(%"class.std::shared_ptr.111") align 8 %0, %"class.mqtt::buffer_ref"* noundef %5, %"class.mqtt::buffer_ref"* noundef %6)
          to label %12 unwind label %13

12:                                               ; preds = %3
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %6) #3
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %5) #3
  ret void

13:                                               ; preds = %3
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %7, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %8, align 4
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %6) #3
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %5) #3
  br label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt10buffer_refIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #8 comdat align 2 {
  %3 = alloca %"class.mqtt::buffer_ref"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca %"class.std::shared_ptr.126", align 8
  store %"class.mqtt::buffer_ref"* %0, %"class.mqtt::buffer_ref"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %6 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %3, align 8
  %7 = getelementptr inbounds %"class.mqtt::buffer_ref", %"class.mqtt::buffer_ref"* %6, i32 0, i32 0
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  call void @_ZSt11make_sharedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EESt10shared_ptrIT_EDpOT0_(%"class.std::shared_ptr.126"* sret(%"class.std::shared_ptr.126") align 8 %5, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8)
  call void @_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_vEEOS_IT_E(%"class.std::shared_ptr"* noundef nonnull align 8 dereferenceable(16) %7, %"class.std::shared_ptr.126"* noundef nonnull align 8 dereferenceable(16) %5) #3
  call void @_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.std::shared_ptr.126"* noundef nonnull align 8 dereferenceable(16) %5) #3
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::message"* @_ZNKSt19__shared_ptr_accessIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.113"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access.113"*, align 8
  store %"class.std::__shared_ptr_access.113"* %0, %"class.std::__shared_ptr_access.113"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access.113"*, %"class.std::__shared_ptr_access.113"** %2, align 8
  %4 = call noundef %"class.mqtt::message"* @_ZNKSt19__shared_ptr_accessIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access.113"* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret %"class.mqtt::message"* %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt7message7set_qosEi(%"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) #7 comdat align 2 {
  %3 = alloca %"class.mqtt::message"*, align 8
  %4 = alloca i32, align 4
  store %"class.mqtt::message"* %0, %"class.mqtt::message"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.mqtt::message"*, %"class.mqtt::message"** %3, align 8
  %6 = load i32, i32* %4, align 4
  call void @_ZN4mqtt7message12validate_qosEi(i32 noundef %6)
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %"class.mqtt::message", %"class.mqtt::message"* %5, i32 0, i32 0
  %9 = getelementptr inbounds %struct.MQTTAsync_message, %struct.MQTTAsync_message* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  ret void
}

declare void @_ZN4mqtt12async_client7publishESt10shared_ptrIKNS_7messageEE(%"class.std::shared_ptr.114"* sret(%"class.std::shared_ptr.114") align 8, %"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376), %"class.std::shared_ptr.12"* noundef) unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIKN4mqtt7messageEEC2IS1_vEERKS_IT_E(%"class.std::shared_ptr.12"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::shared_ptr.111"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::shared_ptr.12"*, align 8
  %4 = alloca %"class.std::shared_ptr.111"*, align 8
  store %"class.std::shared_ptr.12"* %0, %"class.std::shared_ptr.12"** %3, align 8
  store %"class.std::shared_ptr.111"* %1, %"class.std::shared_ptr.111"** %4, align 8
  %5 = load %"class.std::shared_ptr.12"*, %"class.std::shared_ptr.12"** %3, align 8
  %6 = bitcast %"class.std::shared_ptr.12"* %5 to %"class.std::__shared_ptr.13"*
  %7 = load %"class.std::shared_ptr.111"*, %"class.std::shared_ptr.111"** %4, align 8
  %8 = bitcast %"class.std::shared_ptr.111"* %7 to %"class.std::__shared_ptr.112"*
  call void @_ZNSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEERKS_IT_LS4_2EE(%"class.std::__shared_ptr.13"* noundef nonnull align 8 dereferenceable(16) %6, %"class.std::__shared_ptr.112"* noundef nonnull align 8 dereferenceable(16) %8) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::delivery_token"* @_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.116"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access.116"*, align 8
  store %"class.std::__shared_ptr_access.116"* %0, %"class.std::__shared_ptr_access.116"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access.116"*, %"class.std::__shared_ptr_access.116"** %2, align 8
  %4 = call noundef %"class.mqtt::delivery_token"* @_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access.116"* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret %"class.mqtt::delivery_token"* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIN4mqtt14delivery_tokenEED2Ev(%"class.std::shared_ptr.114"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::shared_ptr.114"*, align 8
  store %"class.std::shared_ptr.114"* %0, %"class.std::shared_ptr.114"** %2, align 8
  %3 = load %"class.std::shared_ptr.114"*, %"class.std::shared_ptr.114"** %2, align 8
  %4 = bitcast %"class.std::shared_ptr.114"* %3 to %"class.std::__shared_ptr.115"*
  call void @_ZNSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.115"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIKN4mqtt7messageEED2Ev(%"class.std::shared_ptr.12"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::shared_ptr.12"*, align 8
  store %"class.std::shared_ptr.12"* %0, %"class.std::shared_ptr.12"** %2, align 8
  %3 = load %"class.std::shared_ptr.12"*, %"class.std::shared_ptr.12"** %2, align 8
  %4 = bitcast %"class.std::shared_ptr.12"* %3 to %"class.std::__shared_ptr.13"*
  call void @_ZNSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.13"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt12async_client10disconnectEv(%"class.std::shared_ptr.15"* noalias sret(%"class.std::shared_ptr.15") align 8 %0, %"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.mqtt::async_client"*, align 8
  %5 = alloca %"class.mqtt::disconnect_options", align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %"class.std::shared_ptr.15"* %0 to i8*
  store i8* %8, i8** %3, align 8
  store %"class.mqtt::async_client"* %1, %"class.mqtt::async_client"** %4, align 8
  %9 = load %"class.mqtt::async_client"*, %"class.mqtt::async_client"** %4, align 8
  call void @_ZN4mqtt18disconnect_optionsC1Ev(%"class.mqtt::disconnect_options"* noundef nonnull align 8 dereferenceable(128) %5)
  %10 = bitcast %"class.mqtt::async_client"* %9 to void (%"class.std::shared_ptr.15"*, %"class.mqtt::async_client"*, %"class.mqtt::disconnect_options"*)***
  %11 = load void (%"class.std::shared_ptr.15"*, %"class.mqtt::async_client"*, %"class.mqtt::disconnect_options"*)**, void (%"class.std::shared_ptr.15"*, %"class.mqtt::async_client"*, %"class.mqtt::disconnect_options"*)*** %10, align 8
  %12 = getelementptr inbounds void (%"class.std::shared_ptr.15"*, %"class.mqtt::async_client"*, %"class.mqtt::disconnect_options"*)*, void (%"class.std::shared_ptr.15"*, %"class.mqtt::async_client"*, %"class.mqtt::disconnect_options"*)** %11, i64 9
  %13 = load void (%"class.std::shared_ptr.15"*, %"class.mqtt::async_client"*, %"class.mqtt::disconnect_options"*)*, void (%"class.std::shared_ptr.15"*, %"class.mqtt::async_client"*, %"class.mqtt::disconnect_options"*)** %12, align 8
  invoke void %13(%"class.std::shared_ptr.15"* sret(%"class.std::shared_ptr.15") align 8 %0, %"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %9, %"class.mqtt::disconnect_options"* noundef %5)
          to label %14 unwind label %15

14:                                               ; preds = %2
  call void @_ZN4mqtt18disconnect_optionsD2Ev(%"class.mqtt::disconnect_options"* noundef nonnull align 8 dereferenceable(128) %5) #3
  ret void

15:                                               ; preds = %2
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %6, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %7, align 4
  call void @_ZN4mqtt18disconnect_optionsD2Ev(%"class.mqtt::disconnect_options"* noundef nonnull align 8 dereferenceable(128) %5) #3
  br label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIN4mqtt7messageEED2Ev(%"class.std::shared_ptr.111"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::shared_ptr.111"*, align 8
  store %"class.std::shared_ptr.111"* %0, %"class.std::shared_ptr.111"** %2, align 8
  %3 = load %"class.std::shared_ptr.111"*, %"class.std::shared_ptr.111"** %2, align 8
  %4 = bitcast %"class.std::shared_ptr.111"* %3 to %"class.std::__shared_ptr.112"*
  call void @_ZNSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.112"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.eh.typeid.for(i8*) #9

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #10 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN8callbackD1Ev(%class.callback* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.callback*, align 8
  store %class.callback* %0, %class.callback** %2, align 8
  %3 = load %class.callback*, %class.callback** %2, align 8
  call void @_ZN8callbackD2Ev(%class.callback* noundef nonnull align 8 dereferenceable(8) %3, i8** noundef getelementptr inbounds ([2 x i8*], [2 x i8*]* @_ZTT8callback, i64 0, i64 0)) #3
  %4 = bitcast %class.callback* %3 to %"class.mqtt::callback"*
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
define linkonce_odr dso_local void @_ZN8callbackD0Ev(%class.callback* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.callback*, align 8
  store %class.callback* %0, %class.callback** %2, align 8
  %3 = load %class.callback*, %class.callback** %2, align 8
  call void @_ZN8callbackD1Ev(%class.callback* noundef nonnull align 8 dereferenceable(8) %3) #3
  %4 = bitcast %class.callback* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #18
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
define linkonce_odr dso_local void @_ZN8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.callback* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %class.callback*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %class.callback* %0, %class.callback** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %class.callback*, %class.callback** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %7 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %6, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %9 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8) #3
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %12 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %13 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %11, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12)
  %14 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %13, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %15

15:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt8callback15message_arrivedESt10shared_ptrIKNS_7messageEE(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::shared_ptr.12"* noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"class.mqtt::callback"*, align 8
  store %"class.mqtt::callback"* %0, %"class.mqtt::callback"** %3, align 8
  %4 = load %"class.mqtt::callback"*, %"class.mqtt::callback"** %3, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN8callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE(%class.callback* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::shared_ptr.114"* noundef %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %class.callback*, align 8
  store %class.callback* %0, %class.callback** %3, align 8
  %4 = load %class.callback*, %class.callback** %3, align 8
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %6 = bitcast %"class.std::shared_ptr.114"* %1 to %"class.std::__shared_ptr.115"*
  %7 = call noundef zeroext i1 @_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv(%"class.std::__shared_ptr.115"* noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = bitcast %"class.std::shared_ptr.114"* %1 to %"class.std::__shared_ptr_access.116"*
  %10 = call noundef %"class.mqtt::delivery_token"* @_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv(%"class.std::__shared_ptr_access.116"* noundef nonnull align 1 dereferenceable(1) %9) #3
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
  call void @_ZdlPv(i8* noundef %4) #18
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
define linkonce_odr dso_local void @_ZN4mqtt8callback17delivery_completeESt10shared_ptrINS_14delivery_tokenEE(%"class.mqtt::callback"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::shared_ptr.114"* noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"class.mqtt::callback"*, align 8
  store %"class.mqtt::callback"* %0, %"class.mqtt::callback"** %3, align 8
  %4 = load %"class.mqtt::callback"*, %"class.mqtt::callback"** %3, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N8callbackD0Ev(%class.callback* noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.callback*, align 8
  store %class.callback* %0, %class.callback** %2, align 8
  %3 = load %class.callback*, %class.callback** %2, align 8
  %4 = bitcast %class.callback* %3 to i8*
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i8, i8* %4, i64 %9
  %11 = bitcast i8* %10 to %class.callback*
  tail call void @_ZN8callbackD0Ev(%class.callback* noundef nonnull align 8 dereferenceable(8) %11) #3
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n40_N8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.callback* noundef %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #8 comdat align 2 {
  %3 = alloca %class.callback*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %class.callback* %0, %class.callback** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %class.callback*, %class.callback** %3, align 8
  %6 = bitcast %class.callback* %5 to i8*
  %7 = bitcast i8* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 -40
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i8, i8* %6, i64 %11
  %13 = bitcast i8* %12 to %class.callback*
  %14 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  tail call void @_ZN8callback15connection_lostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.callback* noundef nonnull align 8 dereferenceable(8) %13, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EEcvbEv(%"class.std::__shared_ptr.115"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.115"*, align 8
  store %"class.std::__shared_ptr.115"* %0, %"class.std::__shared_ptr.115"** %2, align 8
  %3 = load %"class.std::__shared_ptr.115"*, %"class.std::__shared_ptr.115"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.115", %"class.std::__shared_ptr.115"* %3, i32 0, i32 0
  %5 = load %"class.mqtt::delivery_token"*, %"class.mqtt::delivery_token"** %4, align 8
  %6 = icmp eq %"class.mqtt::delivery_token"* %5, null
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i1 false, i1 true
  ret i1 %8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n56_N8callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE(%class.callback* noundef %0, %"class.std::shared_ptr.114"* noundef %1) unnamed_addr #8 comdat align 2 {
  %3 = alloca %class.callback*, align 8
  store %class.callback* %0, %class.callback** %3, align 8
  %4 = load %class.callback*, %class.callback** %3, align 8
  %5 = bitcast %class.callback* %4 to i8*
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 -56
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %5, i64 %10
  %12 = bitcast i8* %11 to %class.callback*
  tail call void @_ZN8callback17delivery_completeESt10shared_ptrIN4mqtt14delivery_tokenEE(%class.callback* noundef nonnull align 8 dereferenceable(8) %12, %"class.std::shared_ptr.114"* noundef %1)
  ret void
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
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN4mqtt5tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.16"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.16"*, align 8
  store %"class.std::__shared_ptr.16"* %0, %"class.std::__shared_ptr.16"** %2, align 8
  %3 = load %"class.std::__shared_ptr.16"*, %"class.std::__shared_ptr.16"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.16", %"class.std::__shared_ptr.16"* %3, i32 0, i32 1
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
  call void @__clang_call_terminate(i8* %26) #17
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
  call void @__clang_call_terminate(i8* %8) #17
  unreachable
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
  call void @__clang_call_terminate(i8* %24) #17
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
  call void @__clang_call_terminate(i8* %27) #17
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
  call void @__clang_call_terminate(i8* %15) #17
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
  br label %7, !llvm.loop !6

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
  call void @__clang_call_terminate(i8* %14) #17
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
  call void @__clang_call_terminate(i8* %11) #17
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
  %5 = call noundef %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf.118"* noundef nonnull align 8 dereferenceable(64) %4) #3
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
define linkonce_odr dso_local noundef %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf.118"* noundef nonnull align 8 dereferenceable(64) %0) #6 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf.118"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf.118"* %0, %"struct.__gnu_cxx::__aligned_membuf.118"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf.118"*, %"struct.__gnu_cxx::__aligned_membuf.118"** %2, align 8
  %4 = call noundef i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf.118"* noundef nonnull align 8 dereferenceable(64) %3) #3
  %5 = bitcast i8* %4 to %"struct.std::pair"*
  ret %"struct.std::pair"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf.118"* noundef nonnull align 8 dereferenceable(64) %0) #6 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf.118"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf.118"* %0, %"struct.__gnu_cxx::__aligned_membuf.118"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf.118"*, %"struct.__gnu_cxx::__aligned_membuf.118"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf.118", %"struct.__gnu_cxx::__aligned_membuf.118"* %3, i32 0, i32 0
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

declare void @MQTTProperties_free(%struct.MQTTProperties* noundef) #1

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
  call void @__cxa_call_unexpected(i8* %14) #19
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
  call void @__cxa_call_unexpected(i8* %19) #19
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
  call void @__clang_call_terminate(i8* %17) #17
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt7message6createENS_10buffer_refIcEES2_(%"class.std::shared_ptr.111"* noalias sret(%"class.std::shared_ptr.111") align 8 %0, %"class.mqtt::buffer_ref"* noundef %1, %"class.mqtt::buffer_ref"* noundef %2) #7 comdat align 2 {
  %4 = alloca i8*, align 8
  %5 = bitcast %"class.std::shared_ptr.111"* %0 to i8*
  store i8* %5, i8** %4, align 8
  %6 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt4moveIRN4mqtt10buffer_refIcEEEONSt16remove_referenceIT_E4typeEOS5_(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %1) #3
  %7 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt4moveIRN4mqtt10buffer_refIcEEEONSt16remove_referenceIT_E4typeEOS5_(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %2) #3
  call void @_ZSt11make_sharedIN4mqtt7messageEJNS0_10buffer_refIcEES3_RKiRKbEESt10shared_ptrIT_EDpOT0_(%"class.std::shared_ptr.111"* sret(%"class.std::shared_ptr.111") align 8 %0, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %6, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %7, i32* noundef nonnull align 4 dereferenceable(4) @_ZN4mqtt7message8DFLT_QOSE, i8* noundef nonnull align 1 dereferenceable(1) @_ZN4mqtt7message13DFLT_RETAINEDE)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt4moveIRN4mqtt10buffer_refIcEEEONSt16remove_referenceIT_E4typeEOS5_(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat {
  %2 = alloca %"class.mqtt::buffer_ref"*, align 8
  store %"class.mqtt::buffer_ref"* %0, %"class.mqtt::buffer_ref"** %2, align 8
  %3 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %2, align 8
  ret %"class.mqtt::buffer_ref"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt10buffer_refIcEC2EOS1_(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %0, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.mqtt::buffer_ref"*, align 8
  %4 = alloca %"class.mqtt::buffer_ref"*, align 8
  store %"class.mqtt::buffer_ref"* %0, %"class.mqtt::buffer_ref"** %3, align 8
  store %"class.mqtt::buffer_ref"* %1, %"class.mqtt::buffer_ref"** %4, align 8
  %5 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %3, align 8
  %6 = getelementptr inbounds %"class.mqtt::buffer_ref", %"class.mqtt::buffer_ref"* %5, i32 0, i32 0
  %7 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %4, align 8
  %8 = getelementptr inbounds %"class.mqtt::buffer_ref", %"class.mqtt::buffer_ref"* %7, i32 0, i32 0
  call void @_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_(%"class.std::shared_ptr"* noundef nonnull align 8 dereferenceable(16) %6, %"class.std::shared_ptr"* noundef nonnull align 8 dereferenceable(16) %8) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt11make_sharedIN4mqtt7messageEJNS0_10buffer_refIcEES3_RKiRKbEESt10shared_ptrIT_EDpOT0_(%"class.std::shared_ptr.111"* noalias sret(%"class.std::shared_ptr.111") align 8 %0, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %1, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %2, i32* noundef nonnull align 4 dereferenceable(4) %3, i8* noundef nonnull align 1 dereferenceable(1) %4) #7 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %6 = alloca i8*, align 8
  %7 = alloca %"class.mqtt::buffer_ref"*, align 8
  %8 = alloca %"class.mqtt::buffer_ref"*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %"class.std::allocator.119", align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = bitcast %"class.std::shared_ptr.111"* %0 to i8*
  store i8* %14, i8** %6, align 8
  store %"class.mqtt::buffer_ref"* %1, %"class.mqtt::buffer_ref"** %7, align 8
  store %"class.mqtt::buffer_ref"* %2, %"class.mqtt::buffer_ref"** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  call void @_ZNSaIN4mqtt7messageEEC2Ev(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %11) #3
  %15 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %7, align 8
  %16 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %15) #3
  %17 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %8, align 8
  %18 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %17) #3
  %19 = load i32*, i32** %9, align 8
  %20 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %19) #3
  %21 = load i8*, i8** %10, align 8
  %22 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIRKbEOT_RNSt16remove_referenceIS2_E4typeE(i8* noundef nonnull align 1 dereferenceable(1) %21) #3
  invoke void @_ZSt15allocate_sharedIN4mqtt7messageESaIS1_EJNS0_10buffer_refIcEES4_RKiRKbEESt10shared_ptrIT_ERKT0_DpOT1_(%"class.std::shared_ptr.111"* sret(%"class.std::shared_ptr.111") align 8 %0, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %11, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %16, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %18, i32* noundef nonnull align 4 dereferenceable(4) %20, i8* noundef nonnull align 1 dereferenceable(1) %22)
          to label %23 unwind label %24

23:                                               ; preds = %5
  call void @_ZNSaIN4mqtt7messageEED2Ev(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %11) #3
  ret void

24:                                               ; preds = %5
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %12, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %13, align 4
  call void @_ZNSaIN4mqtt7messageEED2Ev(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %11) #3
  br label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = insertvalue { i8*, i32 } undef, i8* %29, 0
  %32 = insertvalue { i8*, i32 } %31, i32 %30, 1
  resume { i8*, i32 } %32
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt15allocate_sharedIN4mqtt7messageESaIS1_EJNS0_10buffer_refIcEES4_RKiRKbEESt10shared_ptrIT_ERKT0_DpOT1_(%"class.std::shared_ptr.111"* noalias sret(%"class.std::shared_ptr.111") align 8 %0, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %1, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %2, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %3, i32* noundef nonnull align 4 dereferenceable(4) %4, i8* noundef nonnull align 1 dereferenceable(1) %5) #7 comdat {
  %7 = alloca i8*, align 8
  %8 = alloca %"class.std::allocator.119"*, align 8
  %9 = alloca %"class.mqtt::buffer_ref"*, align 8
  %10 = alloca %"class.mqtt::buffer_ref"*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %14 = bitcast %"class.std::shared_ptr.111"* %0 to i8*
  store i8* %14, i8** %7, align 8
  store %"class.std::allocator.119"* %1, %"class.std::allocator.119"** %8, align 8
  store %"class.mqtt::buffer_ref"* %2, %"class.mqtt::buffer_ref"** %9, align 8
  store %"class.mqtt::buffer_ref"* %3, %"class.mqtt::buffer_ref"** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %8, align 8
  %16 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %9, align 8
  %17 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %16) #3
  %18 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %10, align 8
  %19 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %18) #3
  %20 = load i32*, i32** %11, align 8
  %21 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %20) #3
  %22 = load i8*, i8** %12, align 8
  %23 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIRKbEOT_RNSt16remove_referenceIS2_E4typeE(i8* noundef nonnull align 1 dereferenceable(1) %22) #3
  call void @_ZNSt10shared_ptrIN4mqtt7messageEEC2ISaIS1_EJNS0_10buffer_refIcEES6_RKiRKbEEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::shared_ptr.111"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %15, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %17, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %19, i32* noundef nonnull align 4 dereferenceable(4) %21, i8* noundef nonnull align 1 dereferenceable(1) %23)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIN4mqtt7messageEEC2Ev(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator.119"*, align 8
  store %"class.std::allocator.119"* %0, %"class.std::allocator.119"** %2, align 8
  %3 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %2, align 8
  %4 = bitcast %"class.std::allocator.119"* %3 to %"class.__gnu_cxx::new_allocator.120"*
  call void @_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEEC2Ev(%"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat {
  %2 = alloca %"class.mqtt::buffer_ref"*, align 8
  store %"class.mqtt::buffer_ref"* %0, %"class.mqtt::buffer_ref"** %2, align 8
  %3 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %2, align 8
  ret %"class.mqtt::buffer_ref"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %0) #6 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIRKbEOT_RNSt16remove_referenceIS2_E4typeE(i8* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIN4mqtt7messageEED2Ev(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator.119"*, align 8
  store %"class.std::allocator.119"* %0, %"class.std::allocator.119"** %2, align 8
  %3 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %2, align 8
  %4 = bitcast %"class.std::allocator.119"* %3 to %"class.__gnu_cxx::new_allocator.120"*
  call void @_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEED2Ev(%"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIN4mqtt7messageEEC2ISaIS1_EJNS0_10buffer_refIcEES6_RKiRKbEEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::shared_ptr.111"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %1, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %2, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %3, i32* noundef nonnull align 4 dereferenceable(4) %4, i8* noundef nonnull align 1 dereferenceable(1) %5) unnamed_addr #8 comdat align 2 {
  %7 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %8 = alloca %"class.std::shared_ptr.111"*, align 8
  %9 = alloca %"class.std::allocator.119"*, align 8
  %10 = alloca %"class.mqtt::buffer_ref"*, align 8
  %11 = alloca %"class.mqtt::buffer_ref"*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  store %"class.std::shared_ptr.111"* %0, %"class.std::shared_ptr.111"** %8, align 8
  store %"class.std::allocator.119"* %1, %"class.std::allocator.119"** %9, align 8
  store %"class.mqtt::buffer_ref"* %2, %"class.mqtt::buffer_ref"** %10, align 8
  store %"class.mqtt::buffer_ref"* %3, %"class.mqtt::buffer_ref"** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load %"class.std::shared_ptr.111"*, %"class.std::shared_ptr.111"** %8, align 8
  %16 = bitcast %"class.std::shared_ptr.111"* %15 to %"class.std::__shared_ptr.112"*
  %17 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %9, align 8
  %18 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %10, align 8
  %19 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %18) #3
  %20 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %11, align 8
  %21 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %20) #3
  %22 = load i32*, i32** %12, align 8
  %23 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %22) #3
  %24 = load i8*, i8** %13, align 8
  %25 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIRKbEOT_RNSt16remove_referenceIS2_E4typeE(i8* noundef nonnull align 1 dereferenceable(1) %24) #3
  call void @_ZNSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS1_EJNS0_10buffer_refIcEES8_RKiRKbEEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::__shared_ptr.112"* noundef nonnull align 8 dereferenceable(16) %16, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %17, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %19, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %21, i32* noundef nonnull align 4 dereferenceable(4) %23, i8* noundef nonnull align 1 dereferenceable(1) %25)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS1_EJNS0_10buffer_refIcEES8_RKiRKbEEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::__shared_ptr.112"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %1, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %2, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %3, i32* noundef nonnull align 4 dereferenceable(4) %4, i8* noundef nonnull align 1 dereferenceable(1) %5) unnamed_addr #8 comdat align 2 {
  %7 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %8 = alloca %"class.std::__shared_ptr.112"*, align 8
  %9 = alloca %"class.std::allocator.119"*, align 8
  %10 = alloca %"class.mqtt::buffer_ref"*, align 8
  %11 = alloca %"class.mqtt::buffer_ref"*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %15 = alloca i8*, align 8
  store %"class.std::__shared_ptr.112"* %0, %"class.std::__shared_ptr.112"** %8, align 8
  store %"class.std::allocator.119"* %1, %"class.std::allocator.119"** %9, align 8
  store %"class.mqtt::buffer_ref"* %2, %"class.mqtt::buffer_ref"** %10, align 8
  store %"class.mqtt::buffer_ref"* %3, %"class.mqtt::buffer_ref"** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %"class.std::__shared_ptr.112"*, %"class.std::__shared_ptr.112"** %8, align 8
  %17 = bitcast %"class.std::__shared_ptr.112"* %16 to %"class.std::__shared_ptr_access.113"*
  %18 = getelementptr inbounds %"class.std::__shared_ptr.112", %"class.std::__shared_ptr.112"* %16, i32 0, i32 0
  store %"class.mqtt::message"* null, %"class.mqtt::message"** %18, align 8
  %19 = getelementptr inbounds %"class.std::__shared_ptr.112", %"class.std::__shared_ptr.112"* %16, i32 0, i32 1
  %20 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %9, align 8
  %21 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %10, align 8
  %22 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %21) #3
  %23 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %11, align 8
  %24 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %23) #3
  %25 = load i32*, i32** %12, align 8
  %26 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %25) #3
  %27 = load i8*, i8** %13, align 8
  %28 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIRKbEOT_RNSt16remove_referenceIS2_E4typeE(i8* noundef nonnull align 1 dereferenceable(1) %27) #3
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN4mqtt7messageESaIS5_EJNS4_10buffer_refIcEES8_RKiRKbEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %19, %"class.mqtt::message"* noundef null, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %20, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %22, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %24, i32* noundef nonnull align 4 dereferenceable(4) %26, i8* noundef nonnull align 1 dereferenceable(1) %28)
  %29 = getelementptr inbounds %"class.std::__shared_ptr.112", %"class.std::__shared_ptr.112"* %16, i32 0, i32 1
  %30 = call noundef i8* @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %29, %"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) bitcast ({ i8*, i8* }* @_ZTISt19_Sp_make_shared_tag to %"class.std::type_info"*)) #3
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = bitcast i8* %31 to %"class.mqtt::message"*
  %33 = getelementptr inbounds %"class.std::__shared_ptr.112", %"class.std::__shared_ptr.112"* %16, i32 0, i32 0
  store %"class.mqtt::message"* %32, %"class.mqtt::message"** %33, align 8
  %34 = getelementptr inbounds %"class.std::__shared_ptr.112", %"class.std::__shared_ptr.112"* %16, i32 0, i32 0
  %35 = load %"class.mqtt::message"*, %"class.mqtt::message"** %34, align 8
  call void @_ZNSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXntsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_(%"class.std::__shared_ptr.112"* noundef nonnull align 8 dereferenceable(16) %16, %"class.mqtt::message"* noundef %35) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN4mqtt7messageESaIS5_EJNS4_10buffer_refIcEES8_RKiRKbEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0, %"class.mqtt::message"* noundef %1, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %2, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %3, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %4, i32* noundef nonnull align 4 dereferenceable(4) %5, i8* noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %8 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %9 = alloca %"class.std::__shared_count"*, align 8
  %10 = alloca %"class.mqtt::message"*, align 8
  %11 = alloca %"class.std::allocator.119"*, align 8
  %12 = alloca %"class.mqtt::buffer_ref"*, align 8
  %13 = alloca %"class.mqtt::buffer_ref"*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %"class.std::allocator.122", align 1
  %17 = alloca %"struct.std::__allocated_ptr", align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %21 = alloca %"class.std::allocator.119", align 1
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %9, align 8
  store %"class.mqtt::message"* %1, %"class.mqtt::message"** %10, align 8
  store %"class.std::allocator.119"* %2, %"class.std::allocator.119"** %11, align 8
  store %"class.mqtt::buffer_ref"* %3, %"class.mqtt::buffer_ref"** %12, align 8
  store %"class.mqtt::buffer_ref"* %4, %"class.mqtt::buffer_ref"** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %22 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %9, align 8
  %23 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %22, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* null, %"class.std::_Sp_counted_base"** %23, align 8
  %24 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %11, align 8
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS1_EERKSaIT_E(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %16, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %24) #3
  invoke void @_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_(%"struct.std::__allocated_ptr"* sret(%"struct.std::__allocated_ptr") align 8 %17, %"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %16)
          to label %25 unwind label %46

25:                                               ; preds = %7
  %26 = invoke noundef %"class.std::_Sp_counted_ptr_inplace"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %17)
          to label %27 unwind label %50

27:                                               ; preds = %25
  store %"class.std::_Sp_counted_ptr_inplace"* %26, %"class.std::_Sp_counted_ptr_inplace"** %20, align 8
  %28 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %20, align 8
  %29 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %28 to i8*
  %30 = bitcast i8* %29 to %"class.std::_Sp_counted_ptr_inplace"*
  %31 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %11, align 8
  %32 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.119"* @_ZSt4moveIRKSaIN4mqtt7messageEEEONSt16remove_referenceIT_E4typeEOS6_(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %31) #3
  call void @_ZNSaIN4mqtt7messageEEC2ERKS1_(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %21, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %32) #3
  %33 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %12, align 8
  %34 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %33) #3
  %35 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %13, align 8
  %36 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %35) #3
  %37 = load i32*, i32** %14, align 8
  %38 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %37) #3
  %39 = load i8*, i8** %15, align 8
  %40 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIRKbEOT_RNSt16remove_referenceIS2_E4typeE(i8* noundef nonnull align 1 dereferenceable(1) %39) #3
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEC2IJNS0_10buffer_refIcEES8_RKiRKbEEES2_DpOT_(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %30, %"class.std::allocator.119"* noundef %21, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %34, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %36, i32* noundef nonnull align 4 dereferenceable(4) %38, i8* noundef nonnull align 1 dereferenceable(1) %40)
          to label %41 unwind label %54

41:                                               ; preds = %27
  call void @_ZNSaIN4mqtt7messageEED2Ev(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %21) #3
  %42 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %20, align 8
  %43 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %42 to %"class.std::_Sp_counted_base"*
  %44 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %22, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* %43, %"class.std::_Sp_counted_base"** %44, align 8
  %45 = call noundef nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %17, i8* null) #3
  call void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %17) #3
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %16) #3
  ret void

46:                                               ; preds = %7
  %47 = landingpad { i8*, i32 }
          cleanup
  %48 = extractvalue { i8*, i32 } %47, 0
  store i8* %48, i8** %18, align 8
  %49 = extractvalue { i8*, i32 } %47, 1
  store i32 %49, i32* %19, align 4
  br label %59

50:                                               ; preds = %25
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %18, align 8
  %53 = extractvalue { i8*, i32 } %51, 1
  store i32 %53, i32* %19, align 4
  br label %58

54:                                               ; preds = %27
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  store i8* %56, i8** %18, align 8
  %57 = extractvalue { i8*, i32 } %55, 1
  store i32 %57, i32* %19, align 4
  call void @_ZNSaIN4mqtt7messageEED2Ev(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %21) #3
  br label %58

58:                                               ; preds = %54, %50
  call void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %17) #3
  br label %59

59:                                               ; preds = %58, %46
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %16) #3
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %18, align 8
  %62 = load i32, i32* %19, align 4
  %63 = insertvalue { i8*, i32 } undef, i8* %61, 0
  %64 = insertvalue { i8*, i32 } %63, i32 %62, 1
  resume { i8*, i32 } %64
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__shared_count"*, align 8
  %4 = alloca %"class.std::type_info"*, align 8
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %3, align 8
  store %"class.std::type_info"* %1, %"class.std::type_info"** %4, align 8
  %5 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %5, i32 0, i32 0
  %7 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %6, align 8
  %8 = icmp ne %"class.std::_Sp_counted_base"* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %5, i32 0, i32 0
  %11 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %10, align 8
  %12 = load %"class.std::type_info"*, %"class.std::type_info"** %4, align 8
  %13 = bitcast %"class.std::_Sp_counted_base"* %11 to i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)***
  %14 = load i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)**, i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)*** %13, align 8
  %15 = getelementptr inbounds i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)*, i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)** %14, i64 4
  %16 = load i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)*, i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)** %15, align 8
  %17 = call noundef i8* %16(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %11, %"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) %12) #3
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i8* [ %17, %9 ], [ null, %18 ]
  ret i8* %20
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXntsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_(%"class.std::__shared_ptr.112"* noundef nonnull align 8 dereferenceable(16) %0, %"class.mqtt::message"* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__shared_ptr.112"*, align 8
  %4 = alloca %"class.mqtt::message"*, align 8
  store %"class.std::__shared_ptr.112"* %0, %"class.std::__shared_ptr.112"** %3, align 8
  store %"class.mqtt::message"* %1, %"class.mqtt::message"** %4, align 8
  %5 = load %"class.std::__shared_ptr.112"*, %"class.std::__shared_ptr.112"** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS1_EERKSaIT_E(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::allocator.122"*, align 8
  %4 = alloca %"class.std::allocator.119"*, align 8
  store %"class.std::allocator.122"* %0, %"class.std::allocator.122"** %3, align 8
  store %"class.std::allocator.119"* %1, %"class.std::allocator.119"** %4, align 8
  %5 = load %"class.std::allocator.122"*, %"class.std::allocator.122"** %3, align 8
  %6 = bitcast %"class.std::allocator.122"* %5 to %"class.__gnu_cxx::new_allocator.123"*
  call void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEEC2Ev(%"class.__gnu_cxx::new_allocator.123"* noundef nonnull align 1 dereferenceable(1) %6) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_(%"struct.std::__allocated_ptr"* noalias sret(%"struct.std::__allocated_ptr") align 8 %0, %"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %1) #7 comdat {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator.122"*, align 8
  %5 = bitcast %"struct.std::__allocated_ptr"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::allocator.122"* %1, %"class.std::allocator.122"** %4, align 8
  %6 = load %"class.std::allocator.122"*, %"class.std::allocator.122"** %4, align 8
  %7 = load %"class.std::allocator.122"*, %"class.std::allocator.122"** %4, align 8
  %8 = call noundef %"class.std::_Sp_counted_ptr_inplace"* @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS7_m(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %7, i64 noundef 1)
  call void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS7_PS6_(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %6, %"class.std::_Sp_counted_ptr_inplace"* noundef %8) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.std::_Sp_counted_ptr_inplace"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %0) #7 comdat align 2 {
  %2 = alloca %"struct.std::__allocated_ptr"*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %2, align 8
  %3 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %3, i32 0, i32 1
  %5 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %4, align 8
  %6 = call noundef %"class.std::_Sp_counted_ptr_inplace"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_raw_ptrEPS6_(%"class.std::_Sp_counted_ptr_inplace"* noundef %5)
  ret %"class.std::_Sp_counted_ptr_inplace"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.119"* @_ZSt4moveIRKSaIN4mqtt7messageEEEONSt16remove_referenceIT_E4typeEOS6_(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca %"class.std::allocator.119"*, align 8
  store %"class.std::allocator.119"* %0, %"class.std::allocator.119"** %2, align 8
  %3 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %2, align 8
  ret %"class.std::allocator.119"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIN4mqtt7messageEEC2ERKS1_(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::allocator.119"*, align 8
  %4 = alloca %"class.std::allocator.119"*, align 8
  store %"class.std::allocator.119"* %0, %"class.std::allocator.119"** %3, align 8
  store %"class.std::allocator.119"* %1, %"class.std::allocator.119"** %4, align 8
  %5 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %3, align 8
  %6 = bitcast %"class.std::allocator.119"* %5 to %"class.__gnu_cxx::new_allocator.120"*
  %7 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %4, align 8
  %8 = bitcast %"class.std::allocator.119"* %7 to %"class.__gnu_cxx::new_allocator.120"*
  call void @_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEEC2ERKS3_(%"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %6, %"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %8) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEC2IJNS0_10buffer_refIcEES8_RKiRKbEEES2_DpOT_(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %0, %"class.std::allocator.119"* noundef %1, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %2, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %3, i32* noundef nonnull align 4 dereferenceable(4) %4, i8* noundef nonnull align 1 dereferenceable(1) %5) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %8 = alloca %"class.mqtt::buffer_ref"*, align 8
  %9 = alloca %"class.mqtt::buffer_ref"*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %"class.std::allocator.119", align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %"class.std::_Sp_counted_ptr_inplace"* %0, %"class.std::_Sp_counted_ptr_inplace"** %7, align 8
  store %"class.mqtt::buffer_ref"* %2, %"class.mqtt::buffer_ref"** %8, align 8
  store %"class.mqtt::buffer_ref"* %3, %"class.mqtt::buffer_ref"** %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* %5, i8** %11, align 8
  %15 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %7, align 8
  %16 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %15 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %16) #3
  %17 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %15 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTVSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %17, align 8
  %18 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %15, i32 0, i32 1
  call void @_ZNSaIN4mqtt7messageEEC2ERKS1_(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %12, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %1) #3
  call void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES2_(%"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(120) %18, %"class.std::allocator.119"* noundef %12) #3
  call void @_ZNSaIN4mqtt7messageEED2Ev(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %12) #3
  %19 = call noundef %"class.mqtt::message"* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %15) #3
  %20 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %8, align 8
  %21 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %20) #3
  %22 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %9, align 8
  %23 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %22) #3
  %24 = load i32*, i32** %10, align 8
  %25 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %24) #3
  %26 = load i8*, i8** %11, align 8
  %27 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIRKbEOT_RNSt16remove_referenceIS2_E4typeE(i8* noundef nonnull align 1 dereferenceable(1) %26) #3
  invoke void @_ZNSt16allocator_traitsISaIN4mqtt7messageEEE9constructIS1_JNS0_10buffer_refIcEES6_RKiRKbEEEvRS2_PT_DpOT0_(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %1, %"class.mqtt::message"* noundef %19, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %21, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %23, i32* noundef nonnull align 4 dereferenceable(4) %25, i8* noundef nonnull align 1 dereferenceable(1) %27)
          to label %28 unwind label %29

28:                                               ; preds = %6
  ret void

29:                                               ; preds = %6
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %13, align 8
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %14, align 4
  call void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev(%"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(120) %18) #3
  %33 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %15 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %33) #3
  br label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = insertvalue { i8*, i32 } undef, i8* %35, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %0, i8* %1) #6 comdat align 2 {
  %3 = alloca %"struct.std::__allocated_ptr"*, align 8
  %4 = alloca i8*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %5, i32 0, i32 1
  store %"class.std::_Sp_counted_ptr_inplace"* null, %"class.std::_Sp_counted_ptr_inplace"** %6, align 8
  ret %"struct.std::__allocated_ptr"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::__allocated_ptr"*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %2, align 8
  %3 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %3, i32 0, i32 1
  %5 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %4, align 8
  %6 = icmp ne %"class.std::_Sp_counted_ptr_inplace"* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %3, i32 0, i32 0
  %9 = load %"class.std::allocator.122"*, %"class.std::allocator.122"** %8, align 8
  %10 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %3, i32 0, i32 1
  %11 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %10, align 8
  invoke void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS7_PS6_m(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %9, %"class.std::_Sp_counted_ptr_inplace"* noundef %11, i64 noundef 1)
          to label %12 unwind label %14

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %1
  ret void

14:                                               ; preds = %7
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator.122"*, align 8
  store %"class.std::allocator.122"* %0, %"class.std::allocator.122"** %2, align 8
  %3 = load %"class.std::allocator.122"*, %"class.std::allocator.122"** %2, align 8
  %4 = bitcast %"class.std::allocator.122"* %3 to %"class.__gnu_cxx::new_allocator.123"*
  call void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEED2Ev(%"class.__gnu_cxx::new_allocator.123"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEEC2Ev(%"class.__gnu_cxx::new_allocator.123"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.123"*, align 8
  store %"class.__gnu_cxx::new_allocator.123"* %0, %"class.__gnu_cxx::new_allocator.123"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.123"*, %"class.__gnu_cxx::new_allocator.123"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.std::_Sp_counted_ptr_inplace"* @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS7_m(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #7 comdat align 2 {
  %3 = alloca %"class.std::allocator.122"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.122"* %0, %"class.std::allocator.122"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.122"*, %"class.std::allocator.122"** %3, align 8
  %6 = bitcast %"class.std::allocator.122"* %5 to %"class.__gnu_cxx::new_allocator.123"*
  %7 = load i64, i64* %4, align 8
  %8 = call noundef %"class.std::_Sp_counted_ptr_inplace"* @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.123"* noundef nonnull align 1 dereferenceable(1) %6, i64 noundef %7, i8* noundef null)
  ret %"class.std::_Sp_counted_ptr_inplace"* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS7_PS6_(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %1, %"class.std::_Sp_counted_ptr_inplace"* noundef %2) unnamed_addr #5 comdat align 2 {
  %4 = alloca %"struct.std::__allocated_ptr"*, align 8
  %5 = alloca %"class.std::allocator.122"*, align 8
  %6 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %4, align 8
  store %"class.std::allocator.122"* %1, %"class.std::allocator.122"** %5, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %2, %"class.std::_Sp_counted_ptr_inplace"** %6, align 8
  %7 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %7, i32 0, i32 0
  %9 = load %"class.std::allocator.122"*, %"class.std::allocator.122"** %5, align 8
  %10 = call noundef %"class.std::allocator.122"* @_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS8_(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %9) #3
  store %"class.std::allocator.122"* %10, %"class.std::allocator.122"** %8, align 8
  %11 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %7, i32 0, i32 1
  %12 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %6, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %12, %"class.std::_Sp_counted_ptr_inplace"** %11, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.std::_Sp_counted_ptr_inplace"* @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.123"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #7 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.123"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.123"* %0, %"class.__gnu_cxx::new_allocator.123"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.123"*, %"class.__gnu_cxx::new_allocator.123"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.123"* noundef nonnull align 1 dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 136
  %15 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %14) #20
  %16 = bitcast i8* %15 to %"class.std::_Sp_counted_ptr_inplace"*
  ret %"class.std::_Sp_counted_ptr_inplace"* %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.123"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.123"*, align 8
  store %"class.__gnu_cxx::new_allocator.123"* %0, %"class.__gnu_cxx::new_allocator.123"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.123"*, %"class.__gnu_cxx::new_allocator.123"** %2, align 8
  ret i64 135637824071393761
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #13

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.std::allocator.122"* @_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS8_(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca %"class.std::allocator.122"*, align 8
  store %"class.std::allocator.122"* %0, %"class.std::allocator.122"** %2, align 8
  %3 = load %"class.std::allocator.122"*, %"class.std::allocator.122"** %2, align 8
  ret %"class.std::allocator.122"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.std::_Sp_counted_ptr_inplace"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_raw_ptrEPS6_(%"class.std::_Sp_counted_ptr_inplace"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %0, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  ret %"class.std::_Sp_counted_ptr_inplace"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEEC2ERKS3_(%"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %0, %"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.120"*, align 8
  %4 = alloca %"class.__gnu_cxx::new_allocator.120"*, align 8
  store %"class.__gnu_cxx::new_allocator.120"* %0, %"class.__gnu_cxx::new_allocator.120"** %3, align 8
  store %"class.__gnu_cxx::new_allocator.120"* %1, %"class.__gnu_cxx::new_allocator.120"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.120"*, %"class.__gnu_cxx::new_allocator.120"** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %0, %"class.std::_Sp_counted_base"** %2, align 8
  %3 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %2, align 8
  %4 = bitcast %"class.std::_Sp_counted_base"* %3 to %"class.std::_Mutex_base"*
  %5 = bitcast %"class.std::_Sp_counted_base"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  %6 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %3, i32 0, i32 1
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %3, i32 0, i32 2
  store i32 1, i32* %7, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES2_(%"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(120) %0, %"class.std::allocator.119"* noundef %1) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* %0, %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"** %3, align 8
  %4 = load %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"** %3, align 8
  %5 = bitcast %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* %4 to %"struct.std::_Sp_ebo_helper"*
  invoke void @_ZNSt14_Sp_ebo_helperILi0ESaIN4mqtt7messageEELb1EEC2ERKS2_(%"struct.std::_Sp_ebo_helper"* noundef nonnull align 1 dereferenceable(1) %5, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %1)
          to label %6 unwind label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl", %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* %4, i32 0, i32 0
  ret void

8:                                                ; preds = %2
  %9 = landingpad { i8*, i32 }
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  call void @__clang_call_terminate(i8* %10) #17
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN4mqtt7messageEEE9constructIS1_JNS0_10buffer_refIcEES6_RKiRKbEEEvRS2_PT_DpOT0_(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %0, %"class.mqtt::message"* noundef %1, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %2, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %3, i32* noundef nonnull align 4 dereferenceable(4) %4, i8* noundef nonnull align 1 dereferenceable(1) %5) #7 comdat align 2 {
  %7 = alloca %"class.std::allocator.119"*, align 8
  %8 = alloca %"class.mqtt::message"*, align 8
  %9 = alloca %"class.mqtt::buffer_ref"*, align 8
  %10 = alloca %"class.mqtt::buffer_ref"*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store %"class.std::allocator.119"* %0, %"class.std::allocator.119"** %7, align 8
  store %"class.mqtt::message"* %1, %"class.mqtt::message"** %8, align 8
  store %"class.mqtt::buffer_ref"* %2, %"class.mqtt::buffer_ref"** %9, align 8
  store %"class.mqtt::buffer_ref"* %3, %"class.mqtt::buffer_ref"** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %7, align 8
  %14 = bitcast %"class.std::allocator.119"* %13 to %"class.__gnu_cxx::new_allocator.120"*
  %15 = load %"class.mqtt::message"*, %"class.mqtt::message"** %8, align 8
  %16 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %9, align 8
  %17 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %16) #3
  %18 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %10, align 8
  %19 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %18) #3
  %20 = load i32*, i32** %11, align 8
  %21 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %20) #3
  %22 = load i8*, i8** %12, align 8
  %23 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIRKbEOT_RNSt16remove_referenceIS2_E4typeE(i8* noundef nonnull align 1 dereferenceable(1) %22) #3
  call void @_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEE9constructIS2_JNS1_10buffer_refIcEES6_RKiRKbEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %14, %"class.mqtt::message"* noundef %15, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %17, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %19, i32* noundef nonnull align 4 dereferenceable(4) %21, i8* noundef nonnull align 1 dereferenceable(1) %23)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::message"* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %0, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl", %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* %4, i32 0, i32 0
  %6 = call noundef %"class.mqtt::message"* @_ZN9__gnu_cxx16__aligned_bufferIN4mqtt7messageEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_buffer"* noundef nonnull align 8 dereferenceable(120) %5) #3
  ret %"class.mqtt::message"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev(%"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* %0, %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"** %2, align 8
  %4 = bitcast %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* %3 to %"struct.std::_Sp_ebo_helper"*
  call void @_ZNSt14_Sp_ebo_helperILi0ESaIN4mqtt7messageEELb1EED2Ev(%"struct.std::_Sp_ebo_helper"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %0, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %3, i32 0, i32 1
  call void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev(%"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(120) %4) #3
  %5 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %3 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %5) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EED0Ev(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %0, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  call void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %3) #3
  %4 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %0, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %3, i32 0, i32 1
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.119"* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv(%"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(120) %4) #3
  %6 = call noundef %"class.mqtt::message"* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %3) #3
  invoke void @_ZNSt16allocator_traitsISaIN4mqtt7messageEEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %5, %"class.mqtt::message"* noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret void

8:                                                ; preds = %1
  %9 = landingpad { i8*, i32 }
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  call void @__clang_call_terminate(i8* %10) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %3 = alloca %"class.std::allocator.122", align 1
  %4 = alloca %"struct.std::__allocated_ptr", align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %0, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  %5 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %2, align 8
  %6 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %5, i32 0, i32 1
  %7 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.119"* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv(%"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(120) %6) #3
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS1_EERKSaIT_E(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %3, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %7) #3
  call void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS7_PS6_(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %4, %"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %3, %"class.std::_Sp_counted_ptr_inplace"* noundef %5) #3
  call void @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %5) #3
  call void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %4) #3
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %0, %"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %5 = alloca %"class.std::type_info"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %0, %"class.std::_Sp_counted_ptr_inplace"** %4, align 8
  store %"class.std::type_info"* %1, %"class.std::type_info"** %5, align 8
  %6 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %4, align 8
  %7 = load %"class.std::type_info"*, %"class.std::type_info"** %5, align 8
  %8 = call noundef zeroext i1 @_ZNKSt9type_infoeqERKS_(%"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) %7, %"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) bitcast ({ i8*, i8* }* @_ZTISt19_Sp_make_shared_tag to %"class.std::type_info"*)) #3
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call noundef %"class.mqtt::message"* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace"* noundef nonnull align 8 dereferenceable(136) %6) #3
  %11 = bitcast %"class.mqtt::message"* %10 to i8*
  store i8* %11, i8** %3, align 8
  br label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i8*, i8** %3, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %0, %"class.std::_Sp_counted_base"** %2, align 8
  %3 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %0, %"class.std::_Sp_counted_base"** %2, align 8
  %3 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %2, align 8
  call void @llvm.trap() #17
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %0, %"class.std::_Sp_counted_base"** %2, align 8
  %3 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %2, align 8
  %4 = icmp eq %"class.std::_Sp_counted_base"* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = bitcast %"class.std::_Sp_counted_base"* %3 to void (%"class.std::_Sp_counted_base"*)***
  %7 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %6, align 8
  %8 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %7, i64 1
  %9 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %8, align 8
  call void %9(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %3) #3
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #14

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Sp_ebo_helperILi0ESaIN4mqtt7messageEELb1EEC2ERKS2_(%"struct.std::_Sp_ebo_helper"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.std::_Sp_ebo_helper"*, align 8
  %4 = alloca %"class.std::allocator.119"*, align 8
  store %"struct.std::_Sp_ebo_helper"* %0, %"struct.std::_Sp_ebo_helper"** %3, align 8
  store %"class.std::allocator.119"* %1, %"class.std::allocator.119"** %4, align 8
  %5 = load %"struct.std::_Sp_ebo_helper"*, %"struct.std::_Sp_ebo_helper"** %3, align 8
  %6 = bitcast %"struct.std::_Sp_ebo_helper"* %5 to %"class.std::allocator.119"*
  %7 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %4, align 8
  call void @_ZNSaIN4mqtt7messageEEC2ERKS1_(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %6, %"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %7) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEE9constructIS2_JNS1_10buffer_refIcEES6_RKiRKbEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %0, %"class.mqtt::message"* noundef %1, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %2, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %3, i32* noundef nonnull align 4 dereferenceable(4) %4, i8* noundef nonnull align 1 dereferenceable(1) %5) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"class.__gnu_cxx::new_allocator.120"*, align 8
  %8 = alloca %"class.mqtt::message"*, align 8
  %9 = alloca %"class.mqtt::buffer_ref"*, align 8
  %10 = alloca %"class.mqtt::buffer_ref"*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %"class.mqtt::buffer_ref", align 8
  %14 = alloca %"class.mqtt::buffer_ref", align 8
  %15 = alloca %"class.mqtt::properties", align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %"class.__gnu_cxx::new_allocator.120"* %0, %"class.__gnu_cxx::new_allocator.120"** %7, align 8
  store %"class.mqtt::message"* %1, %"class.mqtt::message"** %8, align 8
  store %"class.mqtt::buffer_ref"* %2, %"class.mqtt::buffer_ref"** %9, align 8
  store %"class.mqtt::buffer_ref"* %3, %"class.mqtt::buffer_ref"** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = load %"class.__gnu_cxx::new_allocator.120"*, %"class.__gnu_cxx::new_allocator.120"** %7, align 8
  %19 = load %"class.mqtt::message"*, %"class.mqtt::message"** %8, align 8
  %20 = bitcast %"class.mqtt::message"* %19 to i8*
  %21 = bitcast i8* %20 to %"class.mqtt::message"*
  %22 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %9, align 8
  %23 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %22) #3
  call void @_ZN4mqtt10buffer_refIcEC2EOS1_(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %13, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %23) #3
  %24 = load %"class.mqtt::buffer_ref"*, %"class.mqtt::buffer_ref"** %10, align 8
  %25 = call noundef nonnull align 8 dereferenceable(16) %"class.mqtt::buffer_ref"* @_ZSt7forwardIN4mqtt10buffer_refIcEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %24) #3
  call void @_ZN4mqtt10buffer_refIcEC2EOS1_(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %14, %"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %25) #3
  %26 = load i32*, i32** %11, align 8
  %27 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %26) #3
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZSt7forwardIRKbEOT_RNSt16remove_referenceIS2_E4typeE(i8* noundef nonnull align 1 dereferenceable(1) %29) #3
  %31 = load i8, i8* %30, align 1
  %32 = trunc i8 %31 to i1
  invoke void @_ZN4mqtt10propertiesC2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %15)
          to label %33 unwind label %35

33:                                               ; preds = %6
  invoke void @_ZN4mqtt7messageC1ENS_10buffer_refIcEES2_ibRKNS_10propertiesE(%"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120) %21, %"class.mqtt::buffer_ref"* noundef %13, %"class.mqtt::buffer_ref"* noundef %14, i32 noundef %28, i1 noundef zeroext %32, %"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %15)
          to label %34 unwind label %39

34:                                               ; preds = %33
  call void @_ZN4mqtt10propertiesD2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %15) #3
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %14) #3
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %13) #3
  ret void

35:                                               ; preds = %6
  %36 = landingpad { i8*, i32 }
          cleanup
  %37 = extractvalue { i8*, i32 } %36, 0
  store i8* %37, i8** %16, align 8
  %38 = extractvalue { i8*, i32 } %36, 1
  store i32 %38, i32* %17, align 4
  br label %43

39:                                               ; preds = %33
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  store i8* %41, i8** %16, align 8
  %42 = extractvalue { i8*, i32 } %40, 1
  store i32 %42, i32* %17, align 4
  call void @_ZN4mqtt10propertiesD2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %15) #3
  br label %43

43:                                               ; preds = %39, %35
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %14) #3
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %13) #3
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %16, align 8
  %46 = load i32, i32* %17, align 4
  %47 = insertvalue { i8*, i32 } undef, i8* %45, 0
  %48 = insertvalue { i8*, i32 } %47, i32 %46, 1
  resume { i8*, i32 } %48
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

declare void @_ZN4mqtt7messageC1ENS_10buffer_refIcEES2_ibRKNS_10propertiesE(%"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120), %"class.mqtt::buffer_ref"* noundef, %"class.mqtt::buffer_ref"* noundef, i32 noundef, i1 noundef zeroext, %"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::message"* @_ZN9__gnu_cxx16__aligned_bufferIN4mqtt7messageEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_buffer"* noundef nonnull align 8 dereferenceable(120) %0) #6 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_buffer"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer"* %0, %"struct.__gnu_cxx::__aligned_buffer"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_buffer"*, %"struct.__gnu_cxx::__aligned_buffer"** %2, align 8
  %4 = call noundef i8* @_ZN9__gnu_cxx16__aligned_bufferIN4mqtt7messageEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_buffer"* noundef nonnull align 8 dereferenceable(120) %3) #3
  %5 = bitcast i8* %4 to %"class.mqtt::message"*
  ret %"class.mqtt::message"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZN9__gnu_cxx16__aligned_bufferIN4mqtt7messageEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_buffer"* noundef nonnull align 8 dereferenceable(120) %0) #6 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_buffer"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer"* %0, %"struct.__gnu_cxx::__aligned_buffer"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_buffer"*, %"struct.__gnu_cxx::__aligned_buffer"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_buffer", %"struct.__gnu_cxx::__aligned_buffer"* %3, i32 0, i32 0
  %5 = bitcast %"union.std::aligned_storage<120, 8>::type"* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Sp_ebo_helperILi0ESaIN4mqtt7messageEELb1EED2Ev(%"struct.std::_Sp_ebo_helper"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_Sp_ebo_helper"*, align 8
  store %"struct.std::_Sp_ebo_helper"* %0, %"struct.std::_Sp_ebo_helper"** %2, align 8
  %3 = load %"struct.std::_Sp_ebo_helper"*, %"struct.std::_Sp_ebo_helper"** %2, align 8
  %4 = bitcast %"struct.std::_Sp_ebo_helper"* %3 to %"class.std::allocator.119"*
  call void @_ZNSaIN4mqtt7messageEED2Ev(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEED2Ev(%"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.120"*, align 8
  store %"class.__gnu_cxx::new_allocator.120"* %0, %"class.__gnu_cxx::new_allocator.120"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.120"*, %"class.__gnu_cxx::new_allocator.120"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN4mqtt7messageEEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator.119"* noundef nonnull align 1 dereferenceable(1) %0, %"class.mqtt::message"* noundef %1) #7 comdat align 2 {
  %3 = alloca %"class.std::allocator.119"*, align 8
  %4 = alloca %"class.mqtt::message"*, align 8
  store %"class.std::allocator.119"* %0, %"class.std::allocator.119"** %3, align 8
  store %"class.mqtt::message"* %1, %"class.mqtt::message"** %4, align 8
  %5 = load %"class.std::allocator.119"*, %"class.std::allocator.119"** %3, align 8
  %6 = bitcast %"class.std::allocator.119"* %5 to %"class.__gnu_cxx::new_allocator.120"*
  %7 = load %"class.mqtt::message"*, %"class.mqtt::message"** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEE7destroyIS2_EEvPT_(%"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %6, %"class.mqtt::message"* noundef %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.119"* @_ZNSt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS1_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv(%"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(120) %0) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* %0, %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"** %2, align 8
  %4 = bitcast %"class.std::_Sp_counted_ptr_inplace<mqtt::message, std::allocator<mqtt::message>, __gnu_cxx::_S_atomic>::_Impl"* %3 to %"struct.std::_Sp_ebo_helper"*
  %5 = invoke noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.119"* @_ZNSt14_Sp_ebo_helperILi0ESaIN4mqtt7messageEELb1EE6_S_getERS3_(%"struct.std::_Sp_ebo_helper"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret %"class.std::allocator.119"* %5

7:                                                ; preds = %1
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEE7destroyIS2_EEvPT_(%"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %0, %"class.mqtt::message"* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.120"*, align 8
  %4 = alloca %"class.mqtt::message"*, align 8
  store %"class.__gnu_cxx::new_allocator.120"* %0, %"class.__gnu_cxx::new_allocator.120"** %3, align 8
  store %"class.mqtt::message"* %1, %"class.mqtt::message"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.120"*, %"class.__gnu_cxx::new_allocator.120"** %3, align 8
  %6 = load %"class.mqtt::message"*, %"class.mqtt::message"** %4, align 8
  call void @_ZN4mqtt7messageD2Ev(%"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120) %6) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt7messageD2Ev(%"class.mqtt::message"* noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::message"*, align 8
  store %"class.mqtt::message"* %0, %"class.mqtt::message"** %2, align 8
  %3 = load %"class.mqtt::message"*, %"class.mqtt::message"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::message", %"class.mqtt::message"* %3, i32 0, i32 3
  call void @_ZN4mqtt10propertiesD2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %4) #3
  %5 = getelementptr inbounds %"class.mqtt::message", %"class.mqtt::message"* %3, i32 0, i32 2
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %5) #3
  %6 = getelementptr inbounds %"class.mqtt::message", %"class.mqtt::message"* %3, i32 0, i32 1
  call void @_ZN4mqtt10buffer_refIcED2Ev(%"class.mqtt::buffer_ref"* noundef nonnull align 8 dereferenceable(16) %6) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.119"* @_ZNSt14_Sp_ebo_helperILi0ESaIN4mqtt7messageEELb1EE6_S_getERS3_(%"struct.std::_Sp_ebo_helper"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::_Sp_ebo_helper"*, align 8
  store %"struct.std::_Sp_ebo_helper"* %0, %"struct.std::_Sp_ebo_helper"** %2, align 8
  %3 = load %"struct.std::_Sp_ebo_helper"*, %"struct.std::_Sp_ebo_helper"** %2, align 8
  %4 = bitcast %"struct.std::_Sp_ebo_helper"* %3 to %"class.std::allocator.119"*
  ret %"class.std::allocator.119"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt9type_infoeqERKS_(%"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) %1) #6 comdat align 2 {
  %3 = alloca %"class.std::type_info"*, align 8
  %4 = alloca %"class.std::type_info"*, align 8
  store %"class.std::type_info"* %0, %"class.std::type_info"** %3, align 8
  store %"class.std::type_info"* %1, %"class.std::type_info"** %4, align 8
  %5 = load %"class.std::type_info"*, %"class.std::type_info"** %3, align 8
  %6 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = load %"class.std::type_info"*, %"class.std::type_info"** %4, align 8
  %9 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %7, %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %5, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 42
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %5, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %"class.std::type_info"*, %"class.std::type_info"** %4, align 8
  %23 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* noundef %21, i8* noundef %24) #3
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %19, %12
  %28 = phi i1 [ false, %12 ], [ %26, %19 ]
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i1 [ true, %2 ], [ %28, %27 ]
  ret i1 %30
}

; Function Attrs: nounwind
declare i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS2_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS7_PS6_m(%"class.std::allocator.122"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::_Sp_counted_ptr_inplace"* noundef %1, i64 noundef %2) #7 comdat align 2 {
  %4 = alloca %"class.std::allocator.122"*, align 8
  %5 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.122"* %0, %"class.std::allocator.122"** %4, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %1, %"class.std::_Sp_counted_ptr_inplace"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.122"*, %"class.std::allocator.122"** %4, align 8
  %8 = bitcast %"class.std::allocator.122"* %7 to %"class.__gnu_cxx::new_allocator.123"*
  %9 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEE10deallocateEPS6_m(%"class.__gnu_cxx::new_allocator.123"* noundef nonnull align 1 dereferenceable(1) %8, %"class.std::_Sp_counted_ptr_inplace"* noundef %9, i64 noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEE10deallocateEPS6_m(%"class.__gnu_cxx::new_allocator.123"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::_Sp_counted_ptr_inplace"* noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.123"*, align 8
  %5 = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.123"* %0, %"class.__gnu_cxx::new_allocator.123"** %4, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %1, %"class.std::_Sp_counted_ptr_inplace"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.123"*, %"class.__gnu_cxx::new_allocator.123"** %4, align 8
  %8 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %5, align 8
  %9 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceIN4mqtt7messageESaIS3_ELNS_12_Lock_policyE2EEED2Ev(%"class.__gnu_cxx::new_allocator.123"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.123"*, align 8
  store %"class.__gnu_cxx::new_allocator.123"* %0, %"class.__gnu_cxx::new_allocator.123"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.123"*, %"class.__gnu_cxx::new_allocator.123"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIN4mqtt7messageEEC2Ev(%"class.__gnu_cxx::new_allocator.120"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.120"*, align 8
  store %"class.__gnu_cxx::new_allocator.120"* %0, %"class.__gnu_cxx::new_allocator.120"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.120"*, %"class.__gnu_cxx::new_allocator.120"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_(%"class.std::shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::shared_ptr"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::shared_ptr"*, align 8
  %4 = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %0, %"class.std::shared_ptr"** %3, align 8
  store %"class.std::shared_ptr"* %1, %"class.std::shared_ptr"** %4, align 8
  %5 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %3, align 8
  %6 = bitcast %"class.std::shared_ptr"* %5 to %"class.std::__shared_ptr"*
  %7 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(16) %"class.std::shared_ptr"* @_ZSt4moveIRSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEONSt16remove_referenceIT_E4typeEOSB_(%"class.std::shared_ptr"* noundef nonnull align 8 dereferenceable(16) %7) #3
  %9 = bitcast %"class.std::shared_ptr"* %8 to %"class.std::__shared_ptr"*
  call void @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEC2EOS9_(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %6, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %9) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::shared_ptr"* @_ZSt4moveIRSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEONSt16remove_referenceIT_E4typeEOSB_(%"class.std::shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat {
  %2 = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %0, %"class.std::shared_ptr"** %2, align 8
  %3 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %2, align 8
  ret %"class.std::shared_ptr"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEC2EOS9_(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::__shared_ptr"*, align 8
  %4 = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr"** %3, align 8
  store %"class.std::__shared_ptr"* %1, %"class.std::__shared_ptr"** %4, align 8
  %5 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %3, align 8
  %6 = bitcast %"class.std::__shared_ptr"* %5 to %"class.std::__shared_ptr_access"*
  %7 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %5, i32 0, i32 0
  %8 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %4, align 8
  %9 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %8, i32 0, i32 0
  %10 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %9, align 8
  store %"class.std::__cxx11::basic_string"* %10, %"class.std::__cxx11::basic_string"** %7, align 8
  %11 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %5, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %11) #3
  %12 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %5, i32 0, i32 1
  %13 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %4, align 8
  %14 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %13, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %12, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %14) #3
  %15 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %4, align 8
  %16 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %15, i32 0, i32 0
  store %"class.std::__cxx11::basic_string"* null, %"class.std::__cxx11::basic_string"** %16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_count"*, align 8
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %2, align 8
  %3 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %3, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* null, %"class.std::_Sp_counted_base"** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__shared_count"*, align 8
  %4 = alloca %"class.std::__shared_count"*, align 8
  %5 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %3, align 8
  store %"class.std::__shared_count"* %1, %"class.std::__shared_count"** %4, align 8
  %6 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %3, align 8
  %7 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %4, align 8
  %8 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %7, i32 0, i32 0
  %9 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %8, align 8
  store %"class.std::_Sp_counted_base"* %9, %"class.std::_Sp_counted_base"** %5, align 8
  %10 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %6, i32 0, i32 0
  %11 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %10, align 8
  %12 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %4, align 8
  %13 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %12, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* %11, %"class.std::_Sp_counted_base"** %13, align 8
  %14 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %5, align 8
  %15 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %6, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* %14, %"class.std::_Sp_counted_base"** %15, align 8
  ret void
}

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

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt7message12validate_qosEi(i32 noundef %0) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i1, align 1
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %30

13:                                               ; preds = %10, %1
  %14 = call i8* @__cxa_allocate_exception(i64 56) #3
  store i1 true, i1* %7, align 1
  %15 = bitcast i8* %14 to %"class.mqtt::exception"*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %16 unwind label %18

16:                                               ; preds = %13
  invoke void @_ZN4mqtt9exceptionC2EiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.mqtt::exception"* noundef nonnull align 8 dereferenceable(56) %15, i32 noundef -9, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
          to label %17 unwind label %22

17:                                               ; preds = %16
  store i1 false, i1* %7, align 1
  invoke void @__cxa_throw(i8* %14, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN4mqtt9exceptionE to i8*), i8* bitcast (void (%"class.mqtt::exception"*)* @_ZN4mqtt9exceptionD2Ev to i8*)) #19
          to label %36 unwind label %22

18:                                               ; preds = %13
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %5, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %6, align 4
  br label %26

22:                                               ; preds = %17, %16
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %5, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %6, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3) #3
  br label %26

26:                                               ; preds = %22, %18
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  %27 = load i1, i1* %7, align 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  call void @__cxa_free_exception(i8* %14) #3
  br label %29

29:                                               ; preds = %28, %26
  br label %31

30:                                               ; preds = %10
  ret void

31:                                               ; preds = %29
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = insertvalue { i8*, i32 } undef, i8* %32, 0
  %35 = insertvalue { i8*, i32 } %34, i32 %33, 1
  resume { i8*, i32 } %35

36:                                               ; preds = %17
  unreachable
}

declare i8* @__cxa_allocate_exception(i64)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt9exceptionC2EiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.mqtt::exception"* noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.mqtt::exception"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %"class.mqtt::exception"* %0, %"class.mqtt::exception"** %4, align 8
  store i32 %1, i32* %5, align 4
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %6, align 8
  %10 = load %"class.mqtt::exception"*, %"class.mqtt::exception"** %4, align 8
  %11 = bitcast %"class.mqtt::exception"* %10 to %"class.std::runtime_error"*
  %12 = load i32, i32* %5, align 4
  %13 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  call void @_ZN4mqtt9exception15printable_errorEiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %7, i32 noundef %12, i32 noundef 0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13)
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16) %11, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7)
          to label %14 unwind label %22

14:                                               ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #3
  %15 = bitcast %"class.mqtt::exception"* %10 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN4mqtt9exceptionE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %15, align 8
  %16 = getelementptr inbounds %"class.mqtt::exception", %"class.mqtt::exception"* %10, i32 0, i32 1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %"class.mqtt::exception", %"class.mqtt::exception"* %10, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %"class.mqtt::exception", %"class.mqtt::exception"* %10, i32 0, i32 3
  %20 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %20)
          to label %21 unwind label %26

21:                                               ; preds = %14
  ret void

22:                                               ; preds = %3
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %8, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %9, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #3
  br label %31

26:                                               ; preds = %14
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %8, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %9, align 4
  %30 = bitcast %"class.mqtt::exception"* %10 to %"class.std::runtime_error"*
  call void @_ZNSt13runtime_errorD2Ev(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16) %30) #3
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = insertvalue { i8*, i32 } undef, i8* %32, 0
  %35 = insertvalue { i8*, i32 } %34, i32 %33, 1
  resume { i8*, i32 } %35
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt9exceptionD2Ev(%"class.mqtt::exception"* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::exception"*, align 8
  store %"class.mqtt::exception"* %0, %"class.mqtt::exception"** %2, align 8
  %3 = load %"class.mqtt::exception"*, %"class.mqtt::exception"** %2, align 8
  %4 = bitcast %"class.mqtt::exception"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN4mqtt9exceptionE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %"class.mqtt::exception", %"class.mqtt::exception"* %3, i32 0, i32 3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #3
  %6 = bitcast %"class.mqtt::exception"* %3 to %"class.std::runtime_error"*
  call void @_ZNSt13runtime_errorD2Ev(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16) %6) #3
  ret void
}

declare void @__cxa_throw(i8*, i8*, i8*)

declare void @__cxa_free_exception(i8*)

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt9exception15printable_errorEiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %9 = alloca i1, align 1
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::allocator", align 1
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = alloca %"class.std::allocator", align 1
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %21, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"** %8, align 8
  store i1 false, i1* %9, align 1
  %22 = load i32, i32* %6, align 4
  call void @_ZNSt7__cxx119to_stringEi(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %11, i32 noundef %22)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %10, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
          to label %23 unwind label %33

23:                                               ; preds = %4
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
          to label %24 unwind label %37

24:                                               ; preds = %23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
  %25 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %8, align 8
  %26 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %25) #3
  br i1 %26, label %56, label %27

27:                                               ; preds = %24
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16)
          to label %28 unwind label %42

28:                                               ; preds = %27
  %29 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %8, align 8
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %14, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %29)
          to label %30 unwind label %46

30:                                               ; preds = %28
  %31 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14)
          to label %32 unwind label %50

32:                                               ; preds = %30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16) #3
  br label %56

33:                                               ; preds = %4
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %12, align 8
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %13, align 4
  br label %41

37:                                               ; preds = %23
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %12, align 8
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %13, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #3
  br label %41

41:                                               ; preds = %37, %33
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
  br label %93

42:                                               ; preds = %27
  %43 = landingpad { i8*, i32 }
          cleanup
  %44 = extractvalue { i8*, i32 } %43, 0
  store i8* %44, i8** %12, align 8
  %45 = extractvalue { i8*, i32 } %43, 1
  store i32 %45, i32* %13, align 4
  br label %55

46:                                               ; preds = %28
  %47 = landingpad { i8*, i32 }
          cleanup
  %48 = extractvalue { i8*, i32 } %47, 0
  store i8* %48, i8** %12, align 8
  %49 = extractvalue { i8*, i32 } %47, 1
  store i32 %49, i32* %13, align 4
  br label %54

50:                                               ; preds = %30
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %12, align 8
  %53 = extractvalue { i8*, i32 } %51, 1
  store i32 %53, i32* %13, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #3
  br label %54

54:                                               ; preds = %50, %46
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #3
  br label %55

55:                                               ; preds = %54, %42
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16) #3
  br label %92

56:                                               ; preds = %32, %24
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 255
  br i1 %58, label %59, label %88

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %19) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %18, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %19)
          to label %63 unwind label %69

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  invoke void @_ZN4mqtt9exception15reason_code_strB5cxx11Ei(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %20, i32 noundef %64)
          to label %65 unwind label %73

65:                                               ; preds = %63
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %17, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %18, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %20)
          to label %66 unwind label %77

66:                                               ; preds = %65
  %67 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17)
          to label %68 unwind label %81

68:                                               ; preds = %66
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %20) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %18) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %19) #3
  br label %88

69:                                               ; preds = %62
  %70 = landingpad { i8*, i32 }
          cleanup
  %71 = extractvalue { i8*, i32 } %70, 0
  store i8* %71, i8** %12, align 8
  %72 = extractvalue { i8*, i32 } %70, 1
  store i32 %72, i32* %13, align 4
  br label %87

73:                                               ; preds = %63
  %74 = landingpad { i8*, i32 }
          cleanup
  %75 = extractvalue { i8*, i32 } %74, 0
  store i8* %75, i8** %12, align 8
  %76 = extractvalue { i8*, i32 } %74, 1
  store i32 %76, i32* %13, align 4
  br label %86

77:                                               ; preds = %65
  %78 = landingpad { i8*, i32 }
          cleanup
  %79 = extractvalue { i8*, i32 } %78, 0
  store i8* %79, i8** %12, align 8
  %80 = extractvalue { i8*, i32 } %78, 1
  store i32 %80, i32* %13, align 4
  br label %85

81:                                               ; preds = %66
  %82 = landingpad { i8*, i32 }
          cleanup
  %83 = extractvalue { i8*, i32 } %82, 0
  store i8* %83, i8** %12, align 8
  %84 = extractvalue { i8*, i32 } %82, 1
  store i32 %84, i32* %13, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17) #3
  br label %85

85:                                               ; preds = %81, %77
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %20) #3
  br label %86

86:                                               ; preds = %85, %73
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %18) #3
  br label %87

87:                                               ; preds = %86, %69
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %19) #3
  br label %92

88:                                               ; preds = %68, %59, %56
  store i1 true, i1* %9, align 1
  %89 = load i1, i1* %9, align 1
  br i1 %89, label %91, label %90

90:                                               ; preds = %88
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
  br label %91

91:                                               ; preds = %90, %88
  ret void

92:                                               ; preds = %87, %55
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
  br label %93

93:                                               ; preds = %92, %41
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = insertvalue { i8*, i32 } undef, i8* %94, 0
  %97 = insertvalue { i8*, i32 } %96, i32 %95, 1
  resume { i8*, i32 } %97
}

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt9exceptionD0Ev(%"class.mqtt::exception"* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::exception"*, align 8
  store %"class.mqtt::exception"* %0, %"class.mqtt::exception"** %2, align 8
  %3 = load %"class.mqtt::exception"*, %"class.mqtt::exception"** %2, align 8
  call void @_ZN4mqtt9exceptionD2Ev(%"class.mqtt::exception"* noundef nonnull align 8 dereferenceable(56) %3) #3
  %4 = bitcast %"class.mqtt::exception"* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #18
  ret void
}

; Function Attrs: nounwind
declare noundef i8* @_ZNKSt13runtime_error4whatEv(%"class.std::runtime_error"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef %2) #7 comdat {
  %4 = alloca i8*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca i8*, align 8
  %7 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %7, i8** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef %9)
  %11 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i8* noundef %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #7 comdat {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %7, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %6, align 8
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i8* noundef %9)
  %11 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx119to_stringEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) #7 comdat {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  call void (%"class.std::__cxx11::basic_string"*, i32 (i8*, i64, i8*, %struct.__va_list_tag*)*, i64, i8*, ...) @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 (i8*, i64, i8*, %struct.__va_list_tag*)* noundef @vsnprintf, i64 noundef 16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i32 noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #7 comdat {
  %4 = alloca i8*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %7, i8** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %6, align 8
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %10 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9)
  %11 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #7 comdat {
  %4 = alloca i8*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %9, i8** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %6, align 8
  %10 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %11 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #3
  %12 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %13 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12) #3
  %14 = add i64 %11, %13
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %17 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16) #3
  %18 = icmp ugt i64 %15, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %22 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %21) #3
  %23 = icmp ule i64 %20, %22
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i1 [ false, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load i8, i8* %8, align 1
  %28 = trunc i8 %27 to i1
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %31 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %32 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %30, i64 noundef 0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %31)
  %33 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %32) #3
  br label %39

34:                                               ; preds = %24
  %35 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %36 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %37 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %35, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %36)
  %38 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %37) #3
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi %"class.std::__cxx11::basic_string"* [ %33, %29 ], [ %38, %34 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %40) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt9exception15reason_code_strB5cxx11Ei(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %9, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 255
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @MQTTReasonCode_toString(i32 noundef %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %18, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6)
          to label %19 unwind label %20

19:                                               ; preds = %17
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6) #3
  br label %26

20:                                               ; preds = %17
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %7, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %8, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6) #3
  br label %27

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
  br label %26

26:                                               ; preds = %25, %19
  ret void

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  ret %"class.std::__cxx11::basic_string"* %3
}

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i8* noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 (i8*, i64, i8*, %struct.__va_list_tag*)* noundef %1, i64 noundef %2, i8* noundef %3, ...) #7 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i64, i8*, %struct.__va_list_tag*)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1 x %struct.__va_list_tag], align 16
  %11 = alloca i32, align 4
  %12 = alloca %"class.std::allocator", align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %15, i8** %5, align 8
  store i32 (i8*, i64, i8*, %struct.__va_list_tag*)* %1, i32 (i8*, i64, i8*, %struct.__va_list_tag*)** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = mul i64 1, %16
  %18 = alloca i8, i64 %17, align 16
  store i8* %18, i8** %9, align 8
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  %20 = bitcast %struct.__va_list_tag* %19 to i8*
  call void @llvm.va_start(i8* %20)
  %21 = load i32 (i8*, i64, i8*, %struct.__va_list_tag*)*, i32 (i8*, i64, i8*, %struct.__va_list_tag*)** %6, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  %26 = call noundef i32 %21(i8* noundef %22, i64 noundef %23, i8* noundef %24, %struct.__va_list_tag* noundef %25)
  store i32 %26, i32* %11, align 4
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  %28 = bitcast %struct.__va_list_tag* %27 to i8*
  call void @llvm.va_end(i8* %28)
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %29, i8* noundef %33, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12)
          to label %34 unwind label %35

34:                                               ; preds = %4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12) #3
  ret void

35:                                               ; preds = %4
  %36 = landingpad { i8*, i32 }
          cleanup
  %37 = extractvalue { i8*, i32 } %36, 0
  store i8* %37, i8** %13, align 8
  %38 = extractvalue { i8*, i32 } %36, 1
  store i32 %38, i32* %14, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12) #3
  br label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* %14, align 4
  %42 = insertvalue { i8*, i32 } undef, i8* %40, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43
}

; Function Attrs: nounwind
declare i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, i8* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %11 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i32 0, i32 0
  %13 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
  %14 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %12, i8* noundef %13, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14)
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i8* noundef %15, i8* noundef %16)
          to label %17 unwind label %18

17:                                               ; preds = %4
  ret void

18:                                               ; preds = %4
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %9, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %10, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %12) #3
  br label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = insertvalue { i8*, i32 } undef, i8* %23, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26
}

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, i8* noundef %2) #7 comdat align 2 {
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__false_type", align 1
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef %9, i8* noundef %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"*, align 8
  store %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %0, %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"** %2, align 8
  %3 = load %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"** %2, align 8
  %4 = bitcast %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %3 to %"class.std::allocator"*
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, i8* noundef %2) #7 comdat align 2 {
  %4 = alloca %"struct.std::__false_type", align 1
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::forward_iterator_tag", align 1
  %9 = alloca %"struct.std::random_access_iterator_tag", align 1
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast %"struct.std::random_access_iterator_tag"* %9 to %"struct.std::forward_iterator_tag"*
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, i8* noundef %11, i8* noundef %12)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, i8* noundef %2) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"struct.std::forward_iterator_tag", align 1
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_(i8* noundef %12)
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @_ZSt19__throw_logic_errorPKc(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i64 0, i64 0)) #19
  unreachable

19:                                               ; preds = %14, %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call noundef i64 @_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_(i8* noundef %20, i8* noundef %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ugt i64 %23, 15
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i64* noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 0)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i8* noundef %26)
  %27 = load i64, i64* %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %27)
  br label %28

28:                                               ; preds = %25, %19
  %29 = invoke noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
          to label %30 unwind label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_(i8* noundef %29, i8* noundef %31, i8* noundef %32) #3
  br label %46

33:                                               ; preds = %28
  %34 = landingpad { i8*, i32 }
          catch i8* null
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %9, align 8
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = call i8* @__cxa_begin_catch(i8* %38) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
          to label %40 unwind label %41

40:                                               ; preds = %37
  invoke void @__cxa_rethrow() #19
          to label %56 unwind label %41

41:                                               ; preds = %40, %37
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %9, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %10, align 4
  invoke void @__cxa_end_catch()
          to label %45 unwind label %53

45:                                               ; preds = %41
  br label %48

46:                                               ; preds = %30
  %47 = load i64, i64* %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %47)
  ret void

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = insertvalue { i8*, i32 } undef, i8* %49, 0
  %52 = insertvalue { i8*, i32 } %51, i32 %50, 1
  resume { i8*, i32 } %52

53:                                               ; preds = %41
  %54 = landingpad { i8*, i32 }
          catch i8* null
  %55 = extractvalue { i8*, i32 } %54, 0
  call void @__clang_call_terminate(i8* %55) #17
  unreachable

56:                                               ; preds = %40
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_(i8* noundef %0) #6 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  ret i1 %4
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(i8* noundef) #12

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_(i8* noundef %0, i8* noundef %1) #7 comdat {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1
  %6 = alloca %"struct.std::random_access_iterator_tag", align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  call void @_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i8** noundef nonnull align 8 dereferenceable(8) %3)
  %9 = call noundef i64 @_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(i8* noundef %7, i8* noundef %8)
  ret i64 %9
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef) #1

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_(i8* noundef, i8* noundef, i8* noundef) #2

declare noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

declare void @__cxa_rethrow()

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(i8* noundef %0, i8* noundef %1) #6 comdat {
  %3 = alloca %"struct.std::random_access_iterator_tag", align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %6 to i64
  %9 = ptrtoint i8* %7 to i64
  %10 = sub i64 %8, %9
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i8** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSaIcED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

declare i8* @MQTTReasonCode_toString(i32 noundef) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.115"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.115"*, align 8
  store %"class.std::__shared_ptr.115"* %0, %"class.std::__shared_ptr.115"** %2, align 8
  %3 = load %"class.std::__shared_ptr.115"*, %"class.std::__shared_ptr.115"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.115", %"class.std::__shared_ptr.115"* %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.13"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.13"*, align 8
  store %"class.std::__shared_ptr.13"* %0, %"class.std::__shared_ptr.13"** %2, align 8
  %3 = load %"class.std::__shared_ptr.13"*, %"class.std::__shared_ptr.13"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.13", %"class.std::__shared_ptr.13"* %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

declare void @_ZN4mqtt18disconnect_optionsC1Ev(%"class.mqtt::disconnect_options"* noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4mqtt18disconnect_optionsD2Ev(%"class.mqtt::disconnect_options"* noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.mqtt::disconnect_options"*, align 8
  store %"class.mqtt::disconnect_options"* %0, %"class.mqtt::disconnect_options"** %2, align 8
  %3 = load %"class.mqtt::disconnect_options"*, %"class.mqtt::disconnect_options"** %2, align 8
  %4 = getelementptr inbounds %"class.mqtt::disconnect_options", %"class.mqtt::disconnect_options"* %3, i32 0, i32 2
  call void @_ZN4mqtt10propertiesD2Ev(%"class.mqtt::properties"* noundef nonnull align 8 dereferenceable(24) %4) #3
  %5 = getelementptr inbounds %"class.mqtt::disconnect_options", %"class.mqtt::disconnect_options"* %3, i32 0, i32 1
  call void @_ZNSt10shared_ptrIN4mqtt5tokenEED2Ev(%"class.std::shared_ptr.15"* noundef nonnull align 8 dereferenceable(16) %5) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n80_N4mqtt12async_client10disconnectEv(%"class.std::shared_ptr.15"* noalias sret(%"class.std::shared_ptr.15") align 8 %0, %"class.mqtt::async_client"* noundef %1) unnamed_addr #8 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.mqtt::async_client"*, align 8
  %5 = bitcast %"class.std::shared_ptr.15"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.mqtt::async_client"* %1, %"class.mqtt::async_client"** %4, align 8
  %6 = load %"class.mqtt::async_client"*, %"class.mqtt::async_client"** %4, align 8
  %7 = bitcast %"class.mqtt::async_client"* %6 to i8*
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 -80
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i8, i8* %7, i64 %12
  %14 = bitcast i8* %13 to %"class.mqtt::async_client"*
  tail call void @_ZN4mqtt12async_client10disconnectEv(%"class.std::shared_ptr.15"* sret(%"class.std::shared_ptr.15") align 8 %0, %"class.mqtt::async_client"* noundef nonnull align 8 dereferenceable(376) %14)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.112"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.112"*, align 8
  store %"class.std::__shared_ptr.112"* %0, %"class.std::__shared_ptr.112"** %2, align 8
  %3 = load %"class.std::__shared_ptr.112"*, %"class.std::__shared_ptr.112"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.112", %"class.std::__shared_ptr.112"* %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN8callbackD2Ev(%class.callback* noundef nonnull align 8 dereferenceable(8) %0, i8** noundef %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %class.callback*, align 8
  %4 = alloca i8**, align 8
  store %class.callback* %0, %class.callback** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %class.callback*, %class.callback** %3, align 8
  %6 = load i8**, i8*** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N8callbackD1Ev(%class.callback* noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.callback*, align 8
  store %class.callback* %0, %class.callback** %2, align 8
  %3 = load %class.callback*, %class.callback** %2, align 8
  %4 = bitcast %class.callback* %3 to i8*
  %5 = bitcast i8* %4 to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i8, i8* %4, i64 %9
  %11 = bitcast i8* %10 to %class.callback*
  tail call void @_ZN8callbackD1Ev(%class.callback* noundef nonnull align 8 dereferenceable(8) %11) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::message"* @_ZNKSt19__shared_ptr_accessIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access.113"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access.113"*, align 8
  store %"class.std::__shared_ptr_access.113"* %0, %"class.std::__shared_ptr_access.113"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access.113"*, %"class.std::__shared_ptr_access.113"** %2, align 8
  %4 = bitcast %"class.std::__shared_ptr_access.113"* %3 to %"class.std::__shared_ptr.112"*
  %5 = call noundef %"class.mqtt::message"* @_ZNKSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr.112"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret %"class.mqtt::message"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::message"* @_ZNKSt12__shared_ptrIN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr.112"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.112"*, align 8
  store %"class.std::__shared_ptr.112"* %0, %"class.std::__shared_ptr.112"** %2, align 8
  %3 = load %"class.std::__shared_ptr.112"*, %"class.std::__shared_ptr.112"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.112", %"class.std::__shared_ptr.112"* %3, i32 0, i32 0
  %5 = load %"class.mqtt::message"*, %"class.mqtt::message"** %4, align 8
  ret %"class.mqtt::message"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::delivery_token"* @_ZNKSt19__shared_ptr_accessIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv(%"class.std::__shared_ptr_access.116"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr_access.116"*, align 8
  store %"class.std::__shared_ptr_access.116"* %0, %"class.std::__shared_ptr_access.116"** %2, align 8
  %3 = load %"class.std::__shared_ptr_access.116"*, %"class.std::__shared_ptr_access.116"** %2, align 8
  %4 = bitcast %"class.std::__shared_ptr_access.116"* %3 to %"class.std::__shared_ptr.115"*
  %5 = call noundef %"class.mqtt::delivery_token"* @_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr.115"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret %"class.mqtt::delivery_token"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.mqtt::delivery_token"* @_ZNKSt12__shared_ptrIN4mqtt14delivery_tokenELN9__gnu_cxx12_Lock_policyE2EE3getEv(%"class.std::__shared_ptr.115"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.115"*, align 8
  store %"class.std::__shared_ptr.115"* %0, %"class.std::__shared_ptr.115"** %2, align 8
  %3 = load %"class.std::__shared_ptr.115"*, %"class.std::__shared_ptr.115"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.115", %"class.std::__shared_ptr.115"* %3, i32 0, i32 0
  %5 = load %"class.mqtt::delivery_token"*, %"class.mqtt::delivery_token"** %4, align 8
  ret %"class.mqtt::delivery_token"* %5
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
define linkonce_odr dso_local void @_ZSt11make_sharedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EESt10shared_ptrIT_EDpOT0_(%"class.std::shared_ptr.126"* noalias sret(%"class.std::shared_ptr.126") align 8 %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #7 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca %"class.std::allocator.25", align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %"class.std::shared_ptr.126"* %0 to i8*
  store i8* %8, i8** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %5) #3
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %10 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #3
  invoke void @_ZSt15allocate_sharedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EJRKS5_EESt10shared_ptrIT_ERKT0_DpOT1_(%"class.std::shared_ptr.126"* sret(%"class.std::shared_ptr.126") align 8 %0, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %5, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10)
          to label %11 unwind label %12

11:                                               ; preds = %2
  call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %5) #3
  ret void

12:                                               ; preds = %2
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %6, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %7, align 4
  call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %5) #3
  br label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS5_vEEOS_IT_E(%"class.std::shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::shared_ptr.126"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::shared_ptr"*, align 8
  %4 = alloca %"class.std::shared_ptr.126"*, align 8
  store %"class.std::shared_ptr"* %0, %"class.std::shared_ptr"** %3, align 8
  store %"class.std::shared_ptr.126"* %1, %"class.std::shared_ptr.126"** %4, align 8
  %5 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %3, align 8
  %6 = bitcast %"class.std::shared_ptr"* %5 to %"class.std::__shared_ptr"*
  %7 = load %"class.std::shared_ptr.126"*, %"class.std::shared_ptr.126"** %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(16) %"class.std::shared_ptr.126"* @_ZSt4moveIRSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEONSt16remove_referenceIT_E4typeEOSA_(%"class.std::shared_ptr.126"* noundef nonnull align 8 dereferenceable(16) %7) #3
  %9 = bitcast %"class.std::shared_ptr.126"* %8 to %"class.std::__shared_ptr.127"*
  call void @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEC2IS5_vEEOS_IT_LS8_2EE(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %6, %"class.std::__shared_ptr.127"* noundef nonnull align 8 dereferenceable(16) %9) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.std::shared_ptr.126"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::shared_ptr.126"*, align 8
  store %"class.std::shared_ptr.126"* %0, %"class.std::shared_ptr.126"** %2, align 8
  %3 = load %"class.std::shared_ptr.126"*, %"class.std::shared_ptr.126"** %2, align 8
  %4 = bitcast %"class.std::shared_ptr.126"* %3 to %"class.std::__shared_ptr.127"*
  call void @_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.127"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt15allocate_sharedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EJRKS5_EESt10shared_ptrIT_ERKT0_DpOT1_(%"class.std::shared_ptr.126"* noalias sret(%"class.std::shared_ptr.126") align 8 %0, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #7 comdat {
  %4 = alloca i8*, align 8
  %5 = alloca %"class.std::allocator.25"*, align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %8 = bitcast %"class.std::shared_ptr.126"* %0 to i8*
  store i8* %8, i8** %4, align 8
  store %"class.std::allocator.25"* %1, %"class.std::allocator.25"** %5, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %6, align 8
  %9 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %5, align 8
  %10 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %11 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #3
  call void @_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ISaIS5_EJRKS5_EEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::shared_ptr.126"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %9, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator.25"*, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %2, align 8
  %3 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %2, align 8
  %4 = bitcast %"class.std::allocator.25"* %3 to %"class.__gnu_cxx::new_allocator.26"*
  call void @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(%"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  ret %"class.std::__cxx11::basic_string"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator.25"*, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %2, align 8
  %3 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %2, align 8
  %4 = bitcast %"class.std::allocator.25"* %3 to %"class.__gnu_cxx::new_allocator.26"*
  call void @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ISaIS5_EJRKS5_EEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::shared_ptr.126"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #8 comdat align 2 {
  %4 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %5 = alloca %"class.std::shared_ptr.126"*, align 8
  %6 = alloca %"class.std::allocator.25"*, align 8
  %7 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %8 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  store %"class.std::shared_ptr.126"* %0, %"class.std::shared_ptr.126"** %5, align 8
  store %"class.std::allocator.25"* %1, %"class.std::allocator.25"** %6, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %7, align 8
  %9 = load %"class.std::shared_ptr.126"*, %"class.std::shared_ptr.126"** %5, align 8
  %10 = bitcast %"class.std::shared_ptr.126"* %9 to %"class.std::__shared_ptr.127"*
  %11 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %6, align 8
  %12 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %13 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12) #3
  call void @_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS5_EJRKS5_EEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::__shared_ptr.127"* noundef nonnull align 8 dereferenceable(16) %10, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %11, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS5_EJRKS5_EEESt19_Sp_make_shared_tagRKT_DpOT0_(%"class.std::__shared_ptr.127"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #8 comdat align 2 {
  %4 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %5 = alloca %"class.std::__shared_ptr.127"*, align 8
  %6 = alloca %"class.std::allocator.25"*, align 8
  %7 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %8 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %9 = alloca i8*, align 8
  store %"class.std::__shared_ptr.127"* %0, %"class.std::__shared_ptr.127"** %5, align 8
  store %"class.std::allocator.25"* %1, %"class.std::allocator.25"** %6, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %7, align 8
  %10 = load %"class.std::__shared_ptr.127"*, %"class.std::__shared_ptr.127"** %5, align 8
  %11 = bitcast %"class.std::__shared_ptr.127"* %10 to %"class.std::__shared_ptr_access.128"*
  %12 = getelementptr inbounds %"class.std::__shared_ptr.127", %"class.std::__shared_ptr.127"* %10, i32 0, i32 0
  store %"class.std::__cxx11::basic_string"* null, %"class.std::__cxx11::basic_string"** %12, align 8
  %13 = getelementptr inbounds %"class.std::__shared_ptr.127", %"class.std::__shared_ptr.127"* %10, i32 0, i32 1
  %14 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %6, align 8
  %15 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %16 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #3
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EJRKS9_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %13, %"class.std::__cxx11::basic_string"* noundef null, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %14, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16)
  %17 = getelementptr inbounds %"class.std::__shared_ptr.127", %"class.std::__shared_ptr.127"* %10, i32 0, i32 1
  %18 = call noundef i8* @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %17, %"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) bitcast ({ i8*, i8* }* @_ZTISt19_Sp_make_shared_tag to %"class.std::type_info"*)) #3
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %"class.std::__cxx11::basic_string"*
  %21 = getelementptr inbounds %"class.std::__shared_ptr.127", %"class.std::__shared_ptr.127"* %10, i32 0, i32 0
  store %"class.std::__cxx11::basic_string"* %20, %"class.std::__cxx11::basic_string"** %21, align 8
  %22 = getelementptr inbounds %"class.std::__shared_ptr.127", %"class.std::__shared_ptr.127"* %10, i32 0, i32 0
  %23 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %22, align 8
  call void @_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS5_S5_EENSt9enable_ifIXntsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_(%"class.std::__shared_ptr.127"* noundef nonnull align 8 dereferenceable(16) %10, %"class.std::__cxx11::basic_string"* noundef %23) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EJRKS9_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %2, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %6 = alloca %"class.std::__shared_count"*, align 8
  %7 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %8 = alloca %"class.std::allocator.25"*, align 8
  %9 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %10 = alloca %"class.std::allocator.129", align 1
  %11 = alloca %"struct.std::__allocated_ptr.132", align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  %15 = alloca %"class.std::allocator.25", align 1
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %6, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %7, align 8
  store %"class.std::allocator.25"* %2, %"class.std::allocator.25"** %8, align 8
  store %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"** %9, align 8
  %16 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %6, align 8
  %17 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %16, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* null, %"class.std::_Sp_counted_base"** %17, align 8
  %18 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %8, align 8
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS5_EERKSaIT_E(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %10, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %18) #3
  invoke void @_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_(%"struct.std::__allocated_ptr.132"* sret(%"struct.std::__allocated_ptr.132") align 8 %11, %"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %10)
          to label %19 unwind label %34

19:                                               ; preds = %4
  %20 = invoke noundef %"class.std::_Sp_counted_ptr_inplace.133"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv(%"struct.std::__allocated_ptr.132"* noundef nonnull align 8 dereferenceable(16) %11)
          to label %21 unwind label %38

21:                                               ; preds = %19
  store %"class.std::_Sp_counted_ptr_inplace.133"* %20, %"class.std::_Sp_counted_ptr_inplace.133"** %14, align 8
  %22 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %14, align 8
  %23 = bitcast %"class.std::_Sp_counted_ptr_inplace.133"* %22 to i8*
  %24 = bitcast i8* %23 to %"class.std::_Sp_counted_ptr_inplace.133"*
  %25 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %8, align 8
  %26 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.25"* @_ZSt4moveIRKSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEONSt16remove_referenceIT_E4typeEOSA_(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %25) #3
  call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS5_(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %15, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %26) #3
  %27 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %9, align 8
  %28 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %27) #3
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRKS5_EEES6_DpOT_(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %24, %"class.std::allocator.25"* noundef %15, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %28)
          to label %29 unwind label %42

29:                                               ; preds = %21
  call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %15) #3
  %30 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %14, align 8
  %31 = bitcast %"class.std::_Sp_counted_ptr_inplace.133"* %30 to %"class.std::_Sp_counted_base"*
  %32 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %16, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* %31, %"class.std::_Sp_counted_base"** %32, align 8
  %33 = call noundef nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr.132"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn(%"struct.std::__allocated_ptr.132"* noundef nonnull align 8 dereferenceable(16) %11, i8* null) #3
  call void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev(%"struct.std::__allocated_ptr.132"* noundef nonnull align 8 dereferenceable(16) %11) #3
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %10) #3
  ret void

34:                                               ; preds = %4
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %12, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %13, align 4
  br label %47

38:                                               ; preds = %19
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  store i8* %40, i8** %12, align 8
  %41 = extractvalue { i8*, i32 } %39, 1
  store i32 %41, i32* %13, align 4
  br label %46

42:                                               ; preds = %21
  %43 = landingpad { i8*, i32 }
          cleanup
  %44 = extractvalue { i8*, i32 } %43, 0
  store i8* %44, i8** %12, align 8
  %45 = extractvalue { i8*, i32 } %43, 1
  store i32 %45, i32* %13, align 4
  call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %15) #3
  br label %46

46:                                               ; preds = %42, %38
  call void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev(%"struct.std::__allocated_ptr.132"* noundef nonnull align 8 dereferenceable(16) %11) #3
  br label %47

47:                                               ; preds = %46, %34
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %10) #3
  br label %48

48:                                               ; preds = %47
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = insertvalue { i8*, i32 } undef, i8* %49, 0
  %52 = insertvalue { i8*, i32 } %51, i32 %50, 1
  resume { i8*, i32 } %52
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS5_S5_EENSt9enable_ifIXntsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_(%"class.std::__shared_ptr.127"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::__cxx11::basic_string"* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__shared_ptr.127"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__shared_ptr.127"* %0, %"class.std::__shared_ptr.127"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %"class.std::__shared_ptr.127"*, %"class.std::__shared_ptr.127"** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS5_EERKSaIT_E(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::allocator.129"*, align 8
  %4 = alloca %"class.std::allocator.25"*, align 8
  store %"class.std::allocator.129"* %0, %"class.std::allocator.129"** %3, align 8
  store %"class.std::allocator.25"* %1, %"class.std::allocator.25"** %4, align 8
  %5 = load %"class.std::allocator.129"*, %"class.std::allocator.129"** %3, align 8
  %6 = bitcast %"class.std::allocator.129"* %5 to %"class.__gnu_cxx::new_allocator.130"*
  call void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEEC2Ev(%"class.__gnu_cxx::new_allocator.130"* noundef nonnull align 1 dereferenceable(1) %6) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_(%"struct.std::__allocated_ptr.132"* noalias sret(%"struct.std::__allocated_ptr.132") align 8 %0, %"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %1) #7 comdat {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator.129"*, align 8
  %5 = bitcast %"struct.std::__allocated_ptr.132"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::allocator.129"* %1, %"class.std::allocator.129"** %4, align 8
  %6 = load %"class.std::allocator.129"*, %"class.std::allocator.129"** %4, align 8
  %7 = load %"class.std::allocator.129"*, %"class.std::allocator.129"** %4, align 8
  %8 = call noundef %"class.std::_Sp_counted_ptr_inplace.133"* @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %7, i64 noundef 1)
  call void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERSB_PSA_(%"struct.std::__allocated_ptr.132"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %6, %"class.std::_Sp_counted_ptr_inplace.133"* noundef %8) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.std::_Sp_counted_ptr_inplace.133"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv(%"struct.std::__allocated_ptr.132"* noundef nonnull align 8 dereferenceable(16) %0) #7 comdat align 2 {
  %2 = alloca %"struct.std::__allocated_ptr.132"*, align 8
  store %"struct.std::__allocated_ptr.132"* %0, %"struct.std::__allocated_ptr.132"** %2, align 8
  %3 = load %"struct.std::__allocated_ptr.132"*, %"struct.std::__allocated_ptr.132"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__allocated_ptr.132", %"struct.std::__allocated_ptr.132"* %3, i32 0, i32 1
  %5 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %4, align 8
  %6 = call noundef %"class.std::_Sp_counted_ptr_inplace.133"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_raw_ptrEPSA_(%"class.std::_Sp_counted_ptr_inplace.133"* noundef %5)
  ret %"class.std::_Sp_counted_ptr_inplace.133"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.25"* @_ZSt4moveIRKSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEONSt16remove_referenceIT_E4typeEOSA_(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca %"class.std::allocator.25"*, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %2, align 8
  %3 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %2, align 8
  ret %"class.std::allocator.25"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS5_(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::allocator.25"*, align 8
  %4 = alloca %"class.std::allocator.25"*, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %3, align 8
  store %"class.std::allocator.25"* %1, %"class.std::allocator.25"** %4, align 8
  %5 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %3, align 8
  %6 = bitcast %"class.std::allocator.25"* %5 to %"class.__gnu_cxx::new_allocator.26"*
  %7 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %4, align 8
  %8 = bitcast %"class.std::allocator.25"* %7 to %"class.__gnu_cxx::new_allocator.26"*
  call void @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_(%"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %6, %"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %8) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRKS5_EEES6_DpOT_(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %0, %"class.std::allocator.25"* noundef %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"class.std::allocator.25", align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %"class.std::_Sp_counted_ptr_inplace.133"* %0, %"class.std::_Sp_counted_ptr_inplace.133"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %5, align 8
  %9 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %4, align 8
  %10 = bitcast %"class.std::_Sp_counted_ptr_inplace.133"* %9 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %10) #3
  %11 = bitcast %"class.std::_Sp_counted_ptr_inplace.133"* %9 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTVSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %11, align 8
  %12 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace.133", %"class.std::_Sp_counted_ptr_inplace.133"* %9, i32 0, i32 1
  call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS5_(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %6, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %1) #3
  call void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES6_(%"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(32) %12, %"class.std::allocator.25"* noundef %6) #3
  call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %6) #3
  %13 = call noundef %"class.std::__cxx11::basic_string"* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %9) #3
  %14 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %15 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #3
  invoke void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %1, %"class.std::__cxx11::basic_string"* noundef %13, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15)
          to label %16 unwind label %17

16:                                               ; preds = %3
  ret void

17:                                               ; preds = %3
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %7, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %8, align 4
  call void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev(%"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(32) %12) #3
  %21 = bitcast %"class.std::_Sp_counted_ptr_inplace.133"* %9 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %21) #3
  br label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = insertvalue { i8*, i32 } undef, i8* %23, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr.132"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn(%"struct.std::__allocated_ptr.132"* noundef nonnull align 8 dereferenceable(16) %0, i8* %1) #6 comdat align 2 {
  %3 = alloca %"struct.std::__allocated_ptr.132"*, align 8
  %4 = alloca i8*, align 8
  store %"struct.std::__allocated_ptr.132"* %0, %"struct.std::__allocated_ptr.132"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"struct.std::__allocated_ptr.132"*, %"struct.std::__allocated_ptr.132"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__allocated_ptr.132", %"struct.std::__allocated_ptr.132"* %5, i32 0, i32 1
  store %"class.std::_Sp_counted_ptr_inplace.133"* null, %"class.std::_Sp_counted_ptr_inplace.133"** %6, align 8
  ret %"struct.std::__allocated_ptr.132"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev(%"struct.std::__allocated_ptr.132"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::__allocated_ptr.132"*, align 8
  store %"struct.std::__allocated_ptr.132"* %0, %"struct.std::__allocated_ptr.132"** %2, align 8
  %3 = load %"struct.std::__allocated_ptr.132"*, %"struct.std::__allocated_ptr.132"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__allocated_ptr.132", %"struct.std::__allocated_ptr.132"* %3, i32 0, i32 1
  %5 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %4, align 8
  %6 = icmp ne %"class.std::_Sp_counted_ptr_inplace.133"* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"struct.std::__allocated_ptr.132", %"struct.std::__allocated_ptr.132"* %3, i32 0, i32 0
  %9 = load %"class.std::allocator.129"*, %"class.std::allocator.129"** %8, align 8
  %10 = getelementptr inbounds %"struct.std::__allocated_ptr.132", %"struct.std::__allocated_ptr.132"* %3, i32 0, i32 1
  %11 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %10, align 8
  invoke void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERSB_PSA_m(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %9, %"class.std::_Sp_counted_ptr_inplace.133"* noundef %11, i64 noundef 1)
          to label %12 unwind label %14

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %1
  ret void

14:                                               ; preds = %7
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator.129"*, align 8
  store %"class.std::allocator.129"* %0, %"class.std::allocator.129"** %2, align 8
  %3 = load %"class.std::allocator.129"*, %"class.std::allocator.129"** %2, align 8
  %4 = bitcast %"class.std::allocator.129"* %3 to %"class.__gnu_cxx::new_allocator.130"*
  call void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEED2Ev(%"class.__gnu_cxx::new_allocator.130"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEEC2Ev(%"class.__gnu_cxx::new_allocator.130"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.130"*, align 8
  store %"class.__gnu_cxx::new_allocator.130"* %0, %"class.__gnu_cxx::new_allocator.130"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.130"*, %"class.__gnu_cxx::new_allocator.130"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.std::_Sp_counted_ptr_inplace.133"* @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #7 comdat align 2 {
  %3 = alloca %"class.std::allocator.129"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.129"* %0, %"class.std::allocator.129"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.129"*, %"class.std::allocator.129"** %3, align 8
  %6 = bitcast %"class.std::allocator.129"* %5 to %"class.__gnu_cxx::new_allocator.130"*
  %7 = load i64, i64* %4, align 8
  %8 = call noundef %"class.std::_Sp_counted_ptr_inplace.133"* @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.130"* noundef nonnull align 1 dereferenceable(1) %6, i64 noundef %7, i8* noundef null)
  ret %"class.std::_Sp_counted_ptr_inplace.133"* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERSB_PSA_(%"struct.std::__allocated_ptr.132"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %1, %"class.std::_Sp_counted_ptr_inplace.133"* noundef %2) unnamed_addr #5 comdat align 2 {
  %4 = alloca %"struct.std::__allocated_ptr.132"*, align 8
  %5 = alloca %"class.std::allocator.129"*, align 8
  %6 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  store %"struct.std::__allocated_ptr.132"* %0, %"struct.std::__allocated_ptr.132"** %4, align 8
  store %"class.std::allocator.129"* %1, %"class.std::allocator.129"** %5, align 8
  store %"class.std::_Sp_counted_ptr_inplace.133"* %2, %"class.std::_Sp_counted_ptr_inplace.133"** %6, align 8
  %7 = load %"struct.std::__allocated_ptr.132"*, %"struct.std::__allocated_ptr.132"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::__allocated_ptr.132", %"struct.std::__allocated_ptr.132"* %7, i32 0, i32 0
  %9 = load %"class.std::allocator.129"*, %"class.std::allocator.129"** %5, align 8
  %10 = call noundef %"class.std::allocator.129"* @_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RSC_(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %9) #3
  store %"class.std::allocator.129"* %10, %"class.std::allocator.129"** %8, align 8
  %11 = getelementptr inbounds %"struct.std::__allocated_ptr.132", %"struct.std::__allocated_ptr.132"* %7, i32 0, i32 1
  %12 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %6, align 8
  store %"class.std::_Sp_counted_ptr_inplace.133"* %12, %"class.std::_Sp_counted_ptr_inplace.133"** %11, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.std::_Sp_counted_ptr_inplace.133"* @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.130"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #7 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.130"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.130"* %0, %"class.__gnu_cxx::new_allocator.130"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.130"*, %"class.__gnu_cxx::new_allocator.130"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.130"* noundef nonnull align 1 dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 48
  %15 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %14) #20
  %16 = bitcast i8* %15 to %"class.std::_Sp_counted_ptr_inplace.133"*
  ret %"class.std::_Sp_counted_ptr_inplace.133"* %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.130"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.130"*, align 8
  store %"class.__gnu_cxx::new_allocator.130"* %0, %"class.__gnu_cxx::new_allocator.130"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.130"*, %"class.__gnu_cxx::new_allocator.130"** %2, align 8
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.std::allocator.129"* @_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RSC_(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca %"class.std::allocator.129"*, align 8
  store %"class.std::allocator.129"* %0, %"class.std::allocator.129"** %2, align 8
  %3 = load %"class.std::allocator.129"*, %"class.std::allocator.129"** %2, align 8
  ret %"class.std::allocator.129"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.std::_Sp_counted_ptr_inplace.133"* @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_raw_ptrEPSA_(%"class.std::_Sp_counted_ptr_inplace.133"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace.133"* %0, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  ret %"class.std::_Sp_counted_ptr_inplace.133"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_(%"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, %"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  %4 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %0, %"class.__gnu_cxx::new_allocator.26"** %3, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %1, %"class.__gnu_cxx::new_allocator.26"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES6_(%"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::allocator.25"* noundef %1) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* %0, %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"** %3, align 8
  %4 = load %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"** %3, align 8
  %5 = bitcast %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* %4 to %"struct.std::_Sp_ebo_helper.134"*
  invoke void @_ZNSt14_Sp_ebo_helperILi0ESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2ERKS6_(%"struct.std::_Sp_ebo_helper.134"* noundef nonnull align 1 dereferenceable(1) %5, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %1)
          to label %6 unwind label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl", %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* %4, i32 0, i32 0
  ret void

8:                                                ; preds = %2
  %9 = landingpad { i8*, i32 }
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  call void @__clang_call_terminate(i8* %10) #17
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #7 comdat align 2 {
  %4 = alloca %"class.std::allocator.25"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %6, align 8
  %7 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %4, align 8
  %8 = bitcast %"class.std::allocator.25"* %7 to %"class.__gnu_cxx::new_allocator.26"*
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %10 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %11 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #3
  call void @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %8, %"class.std::__cxx11::basic_string"* noundef %9, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.std::__cxx11::basic_string"* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace.133"* %0, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace.133", %"class.std::_Sp_counted_ptr_inplace.133"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl", %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* %4, i32 0, i32 0
  %6 = call noundef %"class.std::__cxx11::basic_string"* @_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_buffer.135"* noundef nonnull align 8 dereferenceable(32) %5) #3
  ret %"class.std::__cxx11::basic_string"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev(%"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* %0, %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"** %2, align 8
  %4 = bitcast %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* %3 to %"struct.std::_Sp_ebo_helper.134"*
  call void @_ZNSt14_Sp_ebo_helperILi0ESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EED2Ev(%"struct.std::_Sp_ebo_helper.134"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace.133"* %0, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace.133", %"class.std::_Sp_counted_ptr_inplace.133"* %3, i32 0, i32 1
  call void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev(%"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(32) %4) #3
  %5 = bitcast %"class.std::_Sp_counted_ptr_inplace.133"* %3 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %5) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED0Ev(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace.133"* %0, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  call void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %3) #3
  %4 = bitcast %"class.std::_Sp_counted_ptr_inplace.133"* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace.133"* %0, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace.133", %"class.std::_Sp_counted_ptr_inplace.133"* %3, i32 0, i32 1
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.25"* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv(%"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(32) %4) #3
  %6 = call noundef %"class.std::__cxx11::basic_string"* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %3) #3
  invoke void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %5, %"class.std::__cxx11::basic_string"* noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret void

8:                                                ; preds = %1
  %9 = landingpad { i8*, i32 }
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  call void @__clang_call_terminate(i8* %10) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  %3 = alloca %"class.std::allocator.129", align 1
  %4 = alloca %"struct.std::__allocated_ptr.132", align 8
  store %"class.std::_Sp_counted_ptr_inplace.133"* %0, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  %5 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %2, align 8
  %6 = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace.133", %"class.std::_Sp_counted_ptr_inplace.133"* %5, i32 0, i32 1
  %7 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.25"* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv(%"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(32) %6) #3
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS5_EERKSaIT_E(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %3, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %7) #3
  call void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERSB_PSA_(%"struct.std::__allocated_ptr.132"* noundef nonnull align 8 dereferenceable(16) %4, %"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %3, %"class.std::_Sp_counted_ptr_inplace.133"* noundef %5) #3
  call void @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %5) #3
  call void @_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev(%"struct.std::__allocated_ptr.132"* noundef nonnull align 8 dereferenceable(16) %4) #3
  call void @_ZNSaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %0, %"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  %5 = alloca %"class.std::type_info"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace.133"* %0, %"class.std::_Sp_counted_ptr_inplace.133"** %4, align 8
  store %"class.std::type_info"* %1, %"class.std::type_info"** %5, align 8
  %6 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %4, align 8
  %7 = load %"class.std::type_info"*, %"class.std::type_info"** %5, align 8
  %8 = call noundef zeroext i1 @_ZNKSt9type_infoeqERKS_(%"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) %7, %"class.std::type_info"* noundef nonnull align 8 dereferenceable(16) bitcast ({ i8*, i8* }* @_ZTISt19_Sp_make_shared_tag to %"class.std::type_info"*)) #3
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call noundef %"class.std::__cxx11::basic_string"* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv(%"class.std::_Sp_counted_ptr_inplace.133"* noundef nonnull align 8 dereferenceable(48) %6) #3
  %11 = bitcast %"class.std::__cxx11::basic_string"* %10 to i8*
  store i8* %11, i8** %3, align 8
  br label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i8*, i8** %3, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Sp_ebo_helperILi0ESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EEC2ERKS6_(%"struct.std::_Sp_ebo_helper.134"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.std::_Sp_ebo_helper.134"*, align 8
  %4 = alloca %"class.std::allocator.25"*, align 8
  store %"struct.std::_Sp_ebo_helper.134"* %0, %"struct.std::_Sp_ebo_helper.134"** %3, align 8
  store %"class.std::allocator.25"* %1, %"class.std::allocator.25"** %4, align 8
  %5 = load %"struct.std::_Sp_ebo_helper.134"*, %"struct.std::_Sp_ebo_helper.134"** %3, align 8
  %6 = bitcast %"struct.std::_Sp_ebo_helper.134"* %5 to %"class.std::allocator.25"*
  %7 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %4, align 8
  call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS5_(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %6, %"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %7) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS6_JRKS6_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #7 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %0, %"class.__gnu_cxx::new_allocator.26"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"** %4, align 8
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %9 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  %10 = bitcast i8* %9 to %"class.std::__cxx11::basic_string"*
  %11 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %12 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.std::__cxx11::basic_string"* @_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_buffer.135"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_buffer.135"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer.135"* %0, %"struct.__gnu_cxx::__aligned_buffer.135"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_buffer.135"*, %"struct.__gnu_cxx::__aligned_buffer.135"** %2, align 8
  %4 = call noundef i8* @_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_buffer.135"* noundef nonnull align 8 dereferenceable(32) %3) #3
  %5 = bitcast i8* %4 to %"class.std::__cxx11::basic_string"*
  ret %"class.std::__cxx11::basic_string"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZN9__gnu_cxx16__aligned_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_buffer.135"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_buffer.135"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer.135"* %0, %"struct.__gnu_cxx::__aligned_buffer.135"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_buffer.135"*, %"struct.__gnu_cxx::__aligned_buffer.135"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_buffer.135", %"struct.__gnu_cxx::__aligned_buffer.135"* %3, i32 0, i32 0
  %5 = bitcast %"union.std::aligned_storage<32, 8>::type"* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Sp_ebo_helperILi0ESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EED2Ev(%"struct.std::_Sp_ebo_helper.134"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_Sp_ebo_helper.134"*, align 8
  store %"struct.std::_Sp_ebo_helper.134"* %0, %"struct.std::_Sp_ebo_helper.134"** %2, align 8
  %3 = load %"struct.std::_Sp_ebo_helper.134"*, %"struct.std::_Sp_ebo_helper.134"** %2, align 8
  %4 = bitcast %"struct.std::_Sp_ebo_helper.134"* %3 to %"class.std::allocator.25"*
  call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(%"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %0, %"class.__gnu_cxx::new_allocator.26"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_(%"class.std::allocator.25"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::__cxx11::basic_string"* noundef %1) #7 comdat align 2 {
  %3 = alloca %"class.std::allocator.25"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::allocator.25"* %0, %"class.std::allocator.25"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %"class.std::allocator.25"*, %"class.std::allocator.25"** %3, align 8
  %6 = bitcast %"class.std::allocator.25"* %5 to %"class.__gnu_cxx::new_allocator.26"*
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS6_EEvPT_(%"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %6, %"class.std::__cxx11::basic_string"* noundef %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.25"* @_ZNSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv(%"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* %0, %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"** %2, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"** %2, align 8
  %4 = bitcast %"class.std::_Sp_counted_ptr_inplace<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, __gnu_cxx::_S_atomic>::_Impl"* %3 to %"struct.std::_Sp_ebo_helper.134"*
  %5 = invoke noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.25"* @_ZNSt14_Sp_ebo_helperILi0ESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE6_S_getERS7_(%"struct.std::_Sp_ebo_helper.134"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret %"class.std::allocator.25"* %5

7:                                                ; preds = %1
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS6_EEvPT_(%"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::__cxx11::basic_string"* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %0, %"class.__gnu_cxx::new_allocator.26"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"** %3, align 8
  %6 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.25"* @_ZNSt14_Sp_ebo_helperILi0ESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb1EE6_S_getERS7_(%"struct.std::_Sp_ebo_helper.134"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::_Sp_ebo_helper.134"*, align 8
  store %"struct.std::_Sp_ebo_helper.134"* %0, %"struct.std::_Sp_ebo_helper.134"** %2, align 8
  %3 = load %"struct.std::_Sp_ebo_helper.134"*, %"struct.std::_Sp_ebo_helper.134"** %2, align 8
  %4 = bitcast %"struct.std::_Sp_ebo_helper.134"* %3 to %"class.std::allocator.25"*
  ret %"class.std::allocator.25"* %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERSB_PSA_m(%"class.std::allocator.129"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::_Sp_counted_ptr_inplace.133"* noundef %1, i64 noundef %2) #7 comdat align 2 {
  %4 = alloca %"class.std::allocator.129"*, align 8
  %5 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.129"* %0, %"class.std::allocator.129"** %4, align 8
  store %"class.std::_Sp_counted_ptr_inplace.133"* %1, %"class.std::_Sp_counted_ptr_inplace.133"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.129"*, %"class.std::allocator.129"** %4, align 8
  %8 = bitcast %"class.std::allocator.129"* %7 to %"class.__gnu_cxx::new_allocator.130"*
  %9 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEE10deallocateEPSA_m(%"class.__gnu_cxx::new_allocator.130"* noundef nonnull align 1 dereferenceable(1) %8, %"class.std::_Sp_counted_ptr_inplace.133"* noundef %9, i64 noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEE10deallocateEPSA_m(%"class.__gnu_cxx::new_allocator.130"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::_Sp_counted_ptr_inplace.133"* noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.130"*, align 8
  %5 = alloca %"class.std::_Sp_counted_ptr_inplace.133"*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.130"* %0, %"class.__gnu_cxx::new_allocator.130"** %4, align 8
  store %"class.std::_Sp_counted_ptr_inplace.133"* %1, %"class.std::_Sp_counted_ptr_inplace.133"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.130"*, %"class.__gnu_cxx::new_allocator.130"** %4, align 8
  %8 = load %"class.std::_Sp_counted_ptr_inplace.133"*, %"class.std::_Sp_counted_ptr_inplace.133"** %5, align 8
  %9 = bitcast %"class.std::_Sp_counted_ptr_inplace.133"* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_ELNS_12_Lock_policyE2EEED2Ev(%"class.__gnu_cxx::new_allocator.130"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.130"*, align 8
  store %"class.__gnu_cxx::new_allocator.130"* %0, %"class.__gnu_cxx::new_allocator.130"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.130"*, %"class.__gnu_cxx::new_allocator.130"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(%"class.__gnu_cxx::new_allocator.26"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.26"*, align 8
  store %"class.__gnu_cxx::new_allocator.26"* %0, %"class.__gnu_cxx::new_allocator.26"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.26"*, %"class.__gnu_cxx::new_allocator.26"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::shared_ptr.126"* @_ZSt4moveIRSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEONSt16remove_referenceIT_E4typeEOSA_(%"class.std::shared_ptr.126"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat {
  %2 = alloca %"class.std::shared_ptr.126"*, align 8
  store %"class.std::shared_ptr.126"* %0, %"class.std::shared_ptr.126"** %2, align 8
  %3 = load %"class.std::shared_ptr.126"*, %"class.std::shared_ptr.126"** %2, align 8
  ret %"class.std::shared_ptr.126"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EEC2IS5_vEEOS_IT_LS8_2EE(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::__shared_ptr.127"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::__shared_ptr"*, align 8
  %4 = alloca %"class.std::__shared_ptr.127"*, align 8
  store %"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr"** %3, align 8
  store %"class.std::__shared_ptr.127"* %1, %"class.std::__shared_ptr.127"** %4, align 8
  %5 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %3, align 8
  %6 = bitcast %"class.std::__shared_ptr"* %5 to %"class.std::__shared_ptr_access"*
  %7 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %5, i32 0, i32 0
  %8 = load %"class.std::__shared_ptr.127"*, %"class.std::__shared_ptr.127"** %4, align 8
  %9 = getelementptr inbounds %"class.std::__shared_ptr.127", %"class.std::__shared_ptr.127"* %8, i32 0, i32 0
  %10 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %9, align 8
  store %"class.std::__cxx11::basic_string"* %10, %"class.std::__cxx11::basic_string"** %7, align 8
  %11 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %5, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %11) #3
  %12 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %5, i32 0, i32 1
  %13 = load %"class.std::__shared_ptr.127"*, %"class.std::__shared_ptr.127"** %4, align 8
  %14 = getelementptr inbounds %"class.std::__shared_ptr.127", %"class.std::__shared_ptr.127"* %13, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %12, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %14) #3
  %15 = load %"class.std::__shared_ptr.127"*, %"class.std::__shared_ptr.127"** %4, align 8
  %16 = getelementptr inbounds %"class.std::__shared_ptr.127", %"class.std::__shared_ptr.127"* %15, i32 0, i32 0
  store %"class.std::__cxx11::basic_string"* null, %"class.std::__cxx11::basic_string"** %16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr.127"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr.127"*, align 8
  store %"class.std::__shared_ptr.127"* %0, %"class.std::__shared_ptr.127"** %2, align 8
  %3 = load %"class.std::__shared_ptr.127"*, %"class.std::__shared_ptr.127"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr.127", %"class.std::__shared_ptr.127"* %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIKN4mqtt7messageELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEERKS_IT_LS4_2EE(%"class.std::__shared_ptr.13"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::__shared_ptr.112"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::__shared_ptr.13"*, align 8
  %4 = alloca %"class.std::__shared_ptr.112"*, align 8
  store %"class.std::__shared_ptr.13"* %0, %"class.std::__shared_ptr.13"** %3, align 8
  store %"class.std::__shared_ptr.112"* %1, %"class.std::__shared_ptr.112"** %4, align 8
  %5 = load %"class.std::__shared_ptr.13"*, %"class.std::__shared_ptr.13"** %3, align 8
  %6 = bitcast %"class.std::__shared_ptr.13"* %5 to %"class.std::__shared_ptr_access.14"*
  %7 = getelementptr inbounds %"class.std::__shared_ptr.13", %"class.std::__shared_ptr.13"* %5, i32 0, i32 0
  %8 = load %"class.std::__shared_ptr.112"*, %"class.std::__shared_ptr.112"** %4, align 8
  %9 = getelementptr inbounds %"class.std::__shared_ptr.112", %"class.std::__shared_ptr.112"* %8, i32 0, i32 0
  %10 = load %"class.mqtt::message"*, %"class.mqtt::message"** %9, align 8
  store %"class.mqtt::message"* %10, %"class.mqtt::message"** %7, align 8
  %11 = getelementptr inbounds %"class.std::__shared_ptr.13", %"class.std::__shared_ptr.13"* %5, i32 0, i32 1
  %12 = load %"class.std::__shared_ptr.112"*, %"class.std::__shared_ptr.112"** %4, align 8
  %13 = getelementptr inbounds %"class.std::__shared_ptr.112", %"class.std::__shared_ptr.112"* %12, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %11, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %13) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__shared_count"*, align 8
  %4 = alloca %"class.std::__shared_count"*, align 8
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %3, align 8
  store %"class.std::__shared_count"* %1, %"class.std::__shared_count"** %4, align 8
  %5 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %5, i32 0, i32 0
  %7 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %4, align 8
  %8 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %7, i32 0, i32 0
  %9 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %8, align 8
  store %"class.std::_Sp_counted_base"* %9, %"class.std::_Sp_counted_base"** %6, align 8
  %10 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %5, i32 0, i32 0
  %11 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %10, align 8
  %12 = icmp ne %"class.std::_Sp_counted_base"* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %5, i32 0, i32 0
  %15 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %14, align 8
  invoke void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %15)
          to label %16 unwind label %18

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %2
  ret void

18:                                               ; preds = %13
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  call void @__clang_call_terminate(i8* %20) #17
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %0, %"class.std::_Sp_counted_base"** %2, align 8
  %3 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %3, i32 0, i32 1
  call void @_ZN9__gnu_cxxL21__atomic_add_dispatchEPii(i32* noundef %4, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @_ZN9__gnu_cxxL21__atomic_add_dispatchEPii(i32* noundef %0, i32 noundef %1) #7 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call noundef i32 @_ZL18__gthread_active_pv()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  call void @_ZN9__gnu_cxxL12__atomic_addEPVii(i32* noundef %8, i32 noundef %9)
  br label %13

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  call void @_ZN9__gnu_cxxL19__atomic_add_singleEPii(i32* noundef %11, i32 noundef %12)
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @_ZN9__gnu_cxxL12__atomic_addEPVii(i32* noundef %0, i32 noundef %1) #6 {
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
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @_ZN9__gnu_cxxL19__atomic_add_singleEPii(i32* noundef %0, i32 noundef %1) #6 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, %5
  store i32 %8, i32* %6, align 4
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_publisher.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__cxx_global_var_init.2()
  call void @__cxx_global_var_init.4()
  call void @__cxx_global_var_init.6()
  call void @__cxx_global_var_init.8()
  ret void
}

declare i32 @printf(i8*, ...)

declare i8* @c_str(%"class.std::__cxx11::basic_string.0"*)

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readnone }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { nofree nosync nounwind willreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { allocsize(0) }

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
