package system

import (
	"time"
)

type SysAuthority struct {
	CreatedAt     time.Time  // 创建时间
	UpdatedAt     time.Time  // 更新时间
	DeletedAt     *time.Time `sql:"index"`
	AuthorityId   uint       `json:"authorityId" gorm:"not null;unique;primary_key;comment:角色ID;size:90"` // 角色ID
	AuthorityName string     `json:"authorityName" gorm:"comment:角色名"`                                    // 角色名
	ParentId      *uint      `json:"parentId" gorm:"comment:父角色ID"`                                       // 父角色ID
	Code          string     `json:"code" form:"code" gorm:"column:code;comment:岗位代码;size:100;"`
	Sort          *int       `json:"sort" form:"sort" gorm:"column:sort;comment:排序;"`
	Status        *int       `json:"status" form:"status" gorm:"column:status;comment:状态 (1正常 2停用);"`
	Remark        string     `json:"remark" form:"remark" gorm:"column:remark;comment:备注;size:255;"`

	DataAuthorityId []*SysAuthority `json:"dataAuthorityId" gorm:"many2many:sys_data_authority_id;"`
	Children        []SysAuthority  `json:"children" gorm:"-"`
	SysBaseMenus    []SysBaseMenu   `json:"menus" gorm:"many2many:sys_authority_menus;"`
	Users           []SysUser       `json:"-" gorm:"many2many:sys_user_authority;"`
	DefaultRouter   string          `json:"defaultRouter" gorm:"comment:默认菜单;default:dashboard"` // 默认菜单(默认dashboard)
}

func (SysAuthority) TableName() string {
	return "sys_authorities"
}
