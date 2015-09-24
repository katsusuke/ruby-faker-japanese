# -*- coding:utf-8 -*
module Faker
  module Japanese
    module Company
      extend self

      @formats = [
        ['株式会社 %s', 'カブシキガイシャ %s'],
        ['有限会社 %s', 'ユウゲンガイシャ %s'],
        ['%s 株式会社', '%s カブシキガイシャ'],
        ['%s 有限会社', '%s ユウゲンガイシャ'],
      ]

      def name
        kanji, yomi = Name.rand(@formats)
        last_name = Name.last_name
        result = kanji % last_name
        Name.set_yomi(result, yomi % last_name.yomi)
      end
    end
  end
end
