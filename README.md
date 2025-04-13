本專案使用爬蟲爬取維基百科頁面[List of association football stadiums by capacity](https://en.wikipedia.org/wiki/List_of_association_football_stadiums_by_capacity)足球場資訊
，使用 Apache Airflow 部署於 Docker 容器中。

🔁 資料流程概觀（ETL）

Extract：從 Wikipedia 擷取原始 HTML 表格，對應`get_wikipedia_page(url)`、`get_wikipedia_data(html)`

Transform：資料清理、結構化、地理定位轉換，對應`clean_text(text)`

Load：寫成結構化格式（如 CSV），供後續分析或儲存對應`write_wikipedia_data(**kwargs`  

說明：這是資料的原始來源，可能透過爬蟲、API 等方式從 Wikipedia 擷取資料（如文章內容、分類、摘要等）。
