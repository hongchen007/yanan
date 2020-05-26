<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件


/**
 * 密码加密
 * @param $password
 * @return string
 */
function appkit_hash($password)
{
	return md5(md5($password).'appkit_007');
}

/**
 * 驼峰命名转下划线命名
 * @param $str
 * @return string
 */
function toUnderScore($str)
{
	$dstr = preg_replace_callback('/([A-Z]+)/', function($matchs){
		return '_' . strtolower($matchs[0]);
	}, $str);
	return trim(preg_replace('/_{2,}/', '_', $dstr), '_');
}

function  ajax($info,$count='',$msg='')
{
	$data['code']=0;
	$data['data']=$info;
	$data['count']=$count;
	$data['msg']=$msg;
	return  json_encode($data);
}

/**
 * 一级导航栏
 * @param $date
 * @return mixed
 */
function getone($date)
{
	$info = array();
	foreach($date as $k=>$v){
		if($v['parent_id'] == 0){
			$v['date'] = [];
			$info[] = $v;
		}
	}
	return gettwo($info,$date);
}

/**
 * 二级导航栏
 * @param $info
 * @param $date
 * @return mixed
 */
function gettwo($info,$date)
{
	foreach ($info as $k=>$v){
		foreach ($date as $ke=>$va){
			if($va['parent_id'] == $v['id']){
				$info[$k]['date'][] = $va;
			}
		}
	}
	return $info;
}

/**
 * 数据导出到excel(csv文件)
 * @param       $fileName
 * @param array $tileArray
 * @param array $dataArray
 */
function export_excel($fileName, $tileArray = [], $dataArray = [])
{
	ini_set('memory_limit', '512M');
	ini_set('max_execution_time', 0);
	ob_end_clean();
	ob_start();
	header("Content-Type: text/csv");
	header("Content-Disposition:filename=" . $fileName);
	$fp = fopen('php://output', 'w');
	fwrite($fp, chr(0xEF) . chr(0xBB) . chr(0xBF));// 转码 防止乱码(比如微信昵称)
	fputcsv($fp, $tileArray);
	$index = 0;
	foreach ($dataArray as $item) {
		if ($index == 1000) {
			$index = 0;
			ob_flush();
			flush();
		}
		$index ++;
		fputcsv($fp, $item);
	}
	ob_flush();
	flush();
	ob_end_clean();
}

/**
 * 过滤数组元素前后空格 (支持多维数组)
 * @param $array 要过滤的数组
 * @return array|string
 */
function trim_array_element($array){
	if(!is_array($array))
		return trim($array);
	return array_map('trim_array_element',$array);
}

/**
 * 根据地址计算经纬度
 * @param $address
 * @return array|bool
 */
function addresstolatlag($address)
{
	$address = trim($address);
	$url = 'http://restapi.amap.com/v3/geocode/geo?address=' . $address . '&key=fbe28a349053d8f48f2ea89fa64be6bb';
	if ($result = file_get_contents($url)) {
		$result = json_decode($result, true);
		//判断是否成功
		if (!empty($result['count'])) {
			return explode(',', $result['geocodes']['0']['location']);
		} else {
			return false;
		}
	}
}

/**
 * 删除字符串中所有空格
 * @param $str
 * @return mixed
 */
function trimall($str)
{
	$oldchar=array(" ","　","\t","\n","\r");
	$newchar=array("","","","","");
	return str_replace($oldchar,$newchar,$str);
}

/**
 * 删除二位数组中所有值中的空格
 * @param $arr
 * @return mixed
 */
function arraytrimall($arr)
{
	foreach($arr as $k=>$v){
		$arr[$k] = trimall($v);
	}
	return $arr;
}

function isMobile()
{
	if (isset($_SERVER['HTTP_X_WAP_PROFILE'])) {
		return true;
	}
	if (isset($_SERVER['HTTP_VIA'])) {
		return stristr($_SERVER['HTTP_VIA'], "wap") ? true : false;
	}
	if (isset($_SERVER['HTTP_USER_AGENT'])) {
		$clientkeywords = array('nokia', 'sony', 'ericsson', 'mot', 'samsung', 'htc', 'sgh', 'lg', 'sharp', 'sie-', 'philips', 'panasonic', 'alcatel', 'lenovo', 'iphone', 'ipod', 'blackberry', 'meizu', 'android', 'netfront', 'symbian', 'ucweb', 'windowsce', 'palm', 'operamini', 'operamobi', 'openwave', 'nexusone', 'cldc', 'midp', 'wap', 'mobile');
		if (preg_match("/(" . implode('|', $clientkeywords) . ")/i", strtolower($_SERVER['HTTP_USER_AGENT']))) {
			return true;
		}
	}
	if (isset($_SERVER['HTTP_ACCEPT'])) {
		if ((strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') !== false) && (strpos($_SERVER['HTTP_ACCEPT'], 'textml') === false || (strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') < strpos($_SERVER['HTTP_ACCEPT'], 'textml')))) {
			return true;
		}
	}
	return false;
}