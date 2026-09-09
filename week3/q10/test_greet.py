import pytest
from greetlab.cli import main
import sys
from io import StringIO

def test_name_only_whitespace(monkeypatch, capsys):
    # 模拟命令行参数 --name "   " 只有空格
    monkeypatch.setattr(sys, "argv", ["cli.py", "--name", "   "])
    with pytest.raises(SystemExit) as exc_info:
        main()
    # 要求退出码必须是2
    assert exc_info.value.code == 2
