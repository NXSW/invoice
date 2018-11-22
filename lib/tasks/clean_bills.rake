namespace :clean_bills do
  desc "請求書テーブルのデータをクリーンする"
  task :destroy_bills => :environment do
    Bill.destroy_all
  end
end
