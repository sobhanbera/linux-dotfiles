local luasnip = require("luasnip")
local s = luasnip.s
local i = luasnip.insert_node
local p = require("luasnip.extras").partial
local fmt = require("luasnip.extras.fmt").fmt

luasnip.add_snippets("cpp", {
	s(
		"cpp_template",
		fmt(
			[[
		/*\
		|*| @coder     : sobhan-bera
		|*| @code_time : {datetime}
		|*| @github    : https://github.com/sobhanbera
		\*/
		#include <bits/stdc++.h>
		using namespace std;

		#define FOR(i, a, b) for(int i = a; i <= b; ++i)
		#define REV(i, b, a) for(int i = b; i >= a; --i)
		#define FORL(i, a, b) for(long long i = a; i <= b; ++i)
		#define REVL(i, b, a) for(long long i = b; i >= a; --i)
		#ifndef ONLINE_JUDGE
		#include "sb/local.h"
		#else
		#define dbg(...) 1
		#endif

		void solution(int _time) {{
			{2}
		}}

		int main() {{
			ios::sync_with_stdio(false); cin.tie(nullptr);
			int t = 1;
			{1}cin >> t;
			for(int time = 1; time <= t; ++time) {{
				solution(time);
				cout << '\n';
			}}
			return 0;
		}}
		]],
			{
				datetime = p(os.date, "%Y-%m-%d %H:%M:%S"),
				i(1, "// "),
				i(2),
			}
		)
	),
	s(
		"cpp_template_google",
		fmt(
			[[
		/*\
		|*| @coder     : sobhan-bera
		|*| @code_time : {datetime}
		|*| @github    : https://github.com/sobhanbera
		\*/
		#include <bits/stdc++.h>
		using namespace std;

		#define FOR(i, a, b) for(int i = a; i <= b; ++i)
		#define REV(i, b, a) for(int i = b; i >= a; --i)
		#define FORL(i, a, b) for(long long i = a; i <= b; ++i)
		#define REVL(i, b, a) for(long long i = b; i >= a; --i)
		#ifndef ONLINE_JUDGE
		#include "sb/local.h"
		#else
		#define dbg(...) 1
		#endif

		void solution(int _time) {{
			{2}
		}}

		int main() {{
			ios::sync_with_stdio(false); cin.tie(nullptr);
			int t = 1;
			{1}cin >> t;
			for(int time = 1; time <= t; ++time) {{
				cout << "Case #" << time << ": ";
				solution(time);
				cout << '\n';
			}}
			return 0;
		}}
		]],
			{
				datetime = p(os.date, "%Y-%m-%d %H:%M:%S"),
				i(1, "// "),
				i(2),
			}
		)
	),
})

