package system

type ServiceGroup struct {
	JwtService
	ApiService
	MenuService
	UserService
	CasbinService
	InitDBService
	AutoCodeService
	BaseMenuService
	AuthorityService
	DictionaryService
	SystemDeptService
	SystemConfigService
	AutoCodeHistoryService
	OperationRecordService
	DictionaryDetailService
	AuthorityBtnService
	SystemPostService
}
