# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# coding: utf-8
Property.create(:name => "神泉ハイツ", :fee => "85000", :address => "東京都渋谷区神泉町", :age => "32", :remarks =>"デイリーヤマザキ　神泉店まで308m/ローソン　神泉駅前店まで349m/巡回管理/リフォーム:2012年7月キッチン・シャワールーム・洗面化粧台・トリフォーム済/Tポイントも貯めれます♪引越業者割引あり☆")
Property.create(:name => "セゾン代官山", :fee => "77000", :address => "東京都渋谷区恵比寿西２", :age => "31", :remarks =>"初期費用他合計1.62万円（内訳：鍵交換費用1.62万）")
NearestStation.create(:route =>"JR山手線", :name =>"渋谷駅", :minute =>"13")
NearestStation.create(:route =>"京王井の頭線", :name =>"神泉駅", :minute =>"3")
