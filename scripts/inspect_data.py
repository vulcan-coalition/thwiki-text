
if __name__ == '__main__':
    
    with open('../data/wikitext_format/thwiki-20221120_no-list_rm-empty-parenthesis.txt', 'r') as f:
        texts = [text for text in f.readlines()]
    print(texts[:100])
    print(len(texts))