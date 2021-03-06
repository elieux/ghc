test('joao-circular',
     [when(fast(), skip),
      when(doing_ghci(), extra_hc_opts('-fobject-code')),
      extra_clean(['Data_Lazy.hi',         'Data_Lazy.o',
                   'Funcs_Lexer.hi',       'Funcs_Lexer.o',
                   'Funcs_Parser_Lazy.hi', 'Funcs_Parser_Lazy.o',
                   'LrcPrelude.hi',        'LrcPrelude.o',
                   'Main.hi',              'Main.o',
                   'Visfun_Lazy.hi',       'Visfun_Lazy.o']),
      extra_run_opts('inp 40')],
     multimod_compile_and_run,
     ['Main', '-O'])
