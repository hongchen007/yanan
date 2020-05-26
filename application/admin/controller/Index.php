<?php
namespace app\admin\controller;

use think\facade\Session;
use app\admin\model\UserRole as UserRoleModel;
use app\admin\model\RoleAccess as RoleAccessModel;
use app\admin\model\Access as AccessModel;
use think\facade\Config;


class Index extends Base
{
    /**
     * 导航栏遍历
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function index()
    {
        $userinfo = Session::get('userinfo');
        if($userinfo['is_superme'] == 1){
            //超管啥都展示
            $info = Config::get('menus.');
        }else{
            //非超管判断有啥角色id
            $userrolemodel = new UserRoleModel();
            $userroleinfo  = $userrolemodel->findall($userinfo['id']);
            //所有角色权限id的集合
            $roleaccessmodel = new RoleAccessModel();
            $roleaccessinfo = [];
            foreach($userroleinfo as $k=>$v){
                $roleaccessinfo = array_unique(array_merge($roleaccessinfo, $roleaccessmodel->findAccess($v)));
            }
            //根据权限id查找所有权限
            $accessmodel = new AccessModel();
            $accessinfo = $accessmodel->findcondition($roleaccessinfo);
            //根据权限和导航栏目来筛选符合条件的栏目
            $info = Config::get('menus.');
            foreach($info as $k=>$v){
                //删除没有权限的一级栏目
                if(!in_array($v['url'], $accessinfo)){
                    unset($info[$k]);
                }
                foreach($v['date'] as $ke=>$va){
                    //删除没有权限的二级栏目
                    if(!in_array($va['url'],$accessinfo)){
                        unset($info[$k]['date'][$ke]);
                    }
                    if(!empty($va['date'])){
                        foreach($va['date'] as $key=>$val){
                            //删除没有权限的三级栏目
                            if(!in_array($val['url'],$accessinfo)){
                                unset($info[$k]['date'][$ke]['date'][$key]);
                            }
                        }
                    }
                }
            }
        }
        $this->assign('info', $info);
        return $this->fetch('index/index');
    }
}
