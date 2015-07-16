require "csv"
require "terminal-table"

module Csview
  class Cli
    attr_reader :path

    def initialize(path)
      @path = path
    end

    def run
      rows = CSV.read(path, col_sep: separator)
      table = Terminal::Table.new(rows: rows)
      puts table
    end

    private

    def separator
      if File.extname(path) == ".tsv"
        "\t"
      else
        ","
      end
    end
  end
end
