<?php

namespace app\mobile\controller;

use think\Controller;
use think\Db;

class Index extends Controller
{
	public function index()
	{
		$mark    = Db::table('kit_fine_mark')->order('sort')->select();
		$history = Db::table('kit_love_history')->order('history_year')->select();
		foreach($history as $k=>$v){
			$yeartime = strtotime($v['history_year']);
			$history[$k]['history_year'] = date('Y年m月d日',$yeartime);
			$history[$k]['history_years'] = date('Y-m-d',$yeartime);
			if(strlen($v['history_contents']) > 18){
				$history[$k]['height'] = ceil(strlen($v['history_contents'])/3/2)+1;
			}else{
				$history[$k]['height'] = 3;
			}
		}

		// dump($history);
		// dump($history[0]['history_contents']);
		// die;

		$website = Db::table('kit_website')->find();
		$website['head_dec'] = explode('@',$website['head_dec']);
		$website['agree_des'] = explode('@',$website['agree_des']);
		$head = Db::table('kit_head_pic')->find();
		// dump($website);
		// dump($history);
		// dump($_SERVER["DOCUMENT_ROOT"]);
		// die;
		$this->assign('mark',$mark);
		$this->assign('history',$history);
		$this->assign('website',$website);
		$this->assign('head',$head);
		return $this->fetch();
	}
}
