MiniTest Vesper Plugin
======================
> Automates running MiniTest tests in Vesper.


minitest(file)
--------------
> Runs MiniTest on all file in /test or single file passes in args.

    >> rake minitest
	=> runs all tests in /tests
	
	>> rake minitest file=hello_world
	=> runs test in tests/hello_world.rb