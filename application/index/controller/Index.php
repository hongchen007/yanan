<?php

namespace app\index\controller;

use think\Controller;
use think\Db;

class Index extends Controller
{
	public function initialize()
	{
		//判断是不是pc端
		if(isMobile()){
			$this->redirect('/mobile/Index/index');
		}
	}

	public function index()
	{
		$mark    = Db::table('kit_fine_mark')->order('sort')->select();
		$history = Db::table('kit_love_history')->order('history_year')->select();
		foreach($history as $k=>$v){
			$yeartime = strtotime($v['history_year']);
			$history[$k]['history_year'] = date('Y',$yeartime).'年'.date('m',$yeartime).'月'.date('m',$yeartime).'日';
			$history[$k]['history_years'] = date('Y-m-d',$yeartime);
		}
		$website = Db::table('kit_website')->find();
		$head = Db::table('kit_head_pic')->find();
		$website['head_dec'] = explode('@',$website['head_dec']);
		$website['agree_des'] = explode('@',$website['agree_des']);
		$this->assign('mark',$mark);
		$this->assign('history',$history);
		$this->assign('website',$website);
		$this->assign('head',$head);
		return $this->fetch();
	}
}
