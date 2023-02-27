local set=vim.g
 
set.ale_completion_delay=10
set.ale_completion_enabled=1
set.ale_fix_on_save=1
set.ale_lint_on_save=1
set.user_emmet_leader_key=','
set.ale_completion_enabled = 1
set.ale_sign_column_always = 1
set.ale_lint_on_text_changed = 0
set.ale_fix_on_text_changed = 0
set.ale_sign_error = ''
set.ale_sign_warning = ''
set.ale_python_flake8_executable = 'python3'
set.ale_python_flake8_options = '-m flake8'
set.ale_python_black_executable = 'python3'
set.ale_python_black_options = '-m black'
set.ale_python_autopep8_executable = 'python3'
set.ale_python_autopep8_options = '-m autopep8'
set.ale_linters = {
	python = {'flake8', 'isort', 'bandit','mypy'},
	vim = {'vimls', 'vint'},
	markdown = {'alex','languagetool','markdownlint','mdl','proselint','redpen','remark_lint','textlint','vale','writegood'}
}

set.ale_fixers = {
	--* = {'remove_trailling_lines','trim_whitespace'},
	python = {'black', 'autopep8','yapf'},
	markdown = {'prettier','remark-lint'}
}
