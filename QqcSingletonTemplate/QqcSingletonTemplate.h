

// .h
#define single_interface_qqc(class)  + (class *)share##class;

// .m
// \ 代表下一行也属于宏
// ## 是分隔符
#define single_implementation_qqc(class) \
static class *_instance; \
 \
+ (class *)share##class \
{ \
    if (_instance == nil) { \
        _instance = [[self alloc] init]; \
    } \
    return _instance; \
} \
 \
+ (id)allocWithZone:(NSZone *)zone \
{ \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        _instance = [super allocWithZone:zone]; \
    }); \
    return _instance; \
}