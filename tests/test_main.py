from pytest import fixture
from workflow_check.main import main_function


@fixture(name='data')
def _data():
    return [1, 2, 3]


def test_main_function(data):
    main_function(data)
