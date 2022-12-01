cd scripts
sh download_thwiki_dump.sh 20221120
bash extract_wiki_dump.sh \
    ../dumps/thwiki-20221120-pages-articles.xml.bz2 \
    ../data/extracted/thwiki-20221120_no-list/ \
    ../logs/thwiki-20221120_no-list \
    "--json --sections --filter_disambig_pages --discard_elements gallery,timeline,noinclude,pre,table,tr,td,th,caption,div,form,input,select,option,textarea,ul,li,ol,dl,dt,dd,menu,dir,ref,references,img,imagemap,source,small,br"
python convert_to_wikitext_format.py \
        ../data/extracted/thwiki-20221120_no-list \
        ../data/wikitext_format/thwiki-20221120_no-list_rm-empty-parenthesis.txt \
        --rm_empty_parenthesis