require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/list_names'
require 'json'
require 'pry'

class ListNamesTest < MiniTest::Test
    def setup
        @list = ListNames.new
    end

    def test_list
        assert_equal 'Bart, Lisa, Maggie, Homer & Marge', @list.list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])
        assert_equal 'Bart & Lisa', @list.list([{name: 'Bart'},{name: 'Lisa'}])
        assert_equal 'Bart', @list.list([{name: 'Bart'}])
        assert_equal "", @list.list([])
    end
end