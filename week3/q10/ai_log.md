1.提示：--name为全空白字符时触发SystemExit(2)，不修改测试与配置文件，使用pytest test_greet.py -v验证。
2.AI改动：main函数增加判断，a.name.strip()为空时raise SystemExit(2)。
3.人工diff检查：无多余改动，仅增加校验逻辑。
4.验证：pytest运行，测试用例通过。
