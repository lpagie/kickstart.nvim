local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
-- local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
-- local func = ls.function_node
-- local choice = ls.choice_node
-- local dynamicn = ls.dynamic_node
local rep = require("luasnip.extras").rep

-- local date = function() return {os.date('%Y-%m-%d')} end

-- ls.add_snippets(nil, {
--     all = {
--         snip({
--             trig = "date",
--             namr = "Date",
--             dscr = "Date in the form of YYYY-MM-DD",
--         }, {
--             func(date, {}),
--         }),
--     },
--   markdown = {
--     snip({
--         trig = "yaml",
--         namr = "Header",
--         dscr = "Heade in yaml",
--     }, {
--   text "bla" }),
--   },
-- })

-- Snakemake
ls.add_snippets(nil, {
    snakemake = {
        snip({
            trig = "rule",
            namr = "Rule",
            dscr = "rule (input, output, log, benchmark)",
        }, {
                text "rule ", insert(1, "rule_name"), text ({":", ""}),
                text "\tinput: ", insert(2, "input files"), text ({",", ""}),
                text "\toutput: ", insert(3, "output files"), text ({",", ""}),
                text "\tlog: os.path.join(OUTDIR, \"log\", MODULE, ",
                      rep(1), text ", ",
                      insert(4, "wildcards"), text ", ",
                      text "\"", rep(3), text ({".log\",", ""}),
                 text "\tbenchmarkg: os.path.join(OUTDIR, \"benchmark\", MODULE, ",
                      rep(1), text ", ",
--                      insert(5, "wildcards"), text ", ",
                      rep(4), text ", ",
                      text "\"", rep(3), text ({".benchmark\",", ""}),
                text "\tconda: ", insert(5, "conda env file"), text ({",", ""}),
                text "\tthreads: ", insert(6, "10"), text ({",", ""}),
            }),
    },
})
