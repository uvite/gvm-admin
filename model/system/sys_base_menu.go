package system

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type SysBaseMenu struct {
	global.GVA_MODEL
	MenuLevel     uint                                       `json:"-"`
	ParentId      int64                                     `json:"parent_id" gorm:"comment:父菜单ID"`    // 父菜单ID
	Path          string                                     `json:"path" gorm:"comment:路由path"`        // 路由path
	Name          string                                     `json:"name" gorm:"comment:路由name"`        // 路由name
	Hidden        int                                        `json:"hidden" gorm:"comment:是否在列表隐藏"`     // 是否在列表隐藏
	Component     string                                     `json:"component" gorm:"comment:对应前端文件路径"` // 对应前端文件路径
	Sort          int                                        `json:"sort" gorm:"comment:排序标记"`          // 排序标记
	Meta          `json:"meta" gorm:"embedded;comment:附加属性"` // 附加属性
	SysAuthoritys []SysAuthority                             `json:"authoritys" gorm:"many2many:sys_authority_menus;"`
	Children      []SysBaseMenu                              `json:"children" gorm:"-"`
	Parameters    []SysBaseMenuParameter                     `json:"parameters"`
	MenuBtn       []SysBaseMenuBtn                           `json:"menuBtn"`

	Level    string  `gorm:"column:level;type:varchar(500);NOT NULL;comment:组级集合" json:"level"`   // 组级集合
	Code     string  `gorm:"column:code;type:varchar(100);NOT NULL;comment:菜单标识代码" json:"code"`   // 菜单标识代码
	Route    *string `gorm:"column:route;type:varchar(200);NULL;comment:路由地址" json:"route"`       // 路由地址
	Redirect *string `gorm:"column:redirect;type:varchar(255);NULL;comment:跳转地址" json:"redirect"` // 跳转地址
	//Type     string  `gorm:"column:type;type:char(1);default:;NOT NULL;comment:菜单类型, (M菜单 B按钮 L链接 I iframe)" json:"type"` // 菜单类型, (M菜单 B按钮 L链接 I iframe)
	Status *int16  `gorm:"column:status;type:smallint(6);NULL;comment:状态 (1正常 2停用)" json:"status"` // 状态 (1正常 2停用)
	Remark *string `gorm:"column:remark;type:varchar(255);NULL;comment:备注" json:"remark"`          // 备注

}

type Meta struct {
	Type        string `json:"type" gorm:"comment:类型"` // 是否在列表隐藏
	Redirect    string `json:"redirect" gorm:"comment:高亮菜单"`
	Icon        string `json:"icon" gorm:"comment:菜单图标"` // 菜单图标
	ActiveName  string `json:"activeName" gorm:"comment:高亮菜单"`
	KeepAlive   bool   `json:"keepAlive" gorm:"comment:是否缓存"`           // 是否缓存
	DefaultMenu bool   `json:"defaultMenu" gorm:"comment:是否是基础路由（开发中）"` // 是否是基础路由（开发中）
	Title       string `json:"title" gorm:"comment:菜单名"`                // 菜单名

	CloseTab bool `json:"closeTab" gorm:"comment:自动关闭tab"` // 自动关闭tab
}
type SysBaseMenuParameter struct {
	global.GVA_MODEL
	SysBaseMenuID uint
	Type          string `json:"type" gorm:"comment:地址栏携带参数为params还是query"` // 地址栏携带参数为params还是query
	Key           string `json:"key" gorm:"comment:地址栏携带参数的key"`            // 地址栏携带参数的key
	Value         string `json:"value" gorm:"comment:地址栏携带参数的值"`            // 地址栏携带参数的值
}

func (SysBaseMenu) TableName() string {
	return "sys_base_menus"
}
