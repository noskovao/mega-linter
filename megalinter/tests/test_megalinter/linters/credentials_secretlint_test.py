# !/usr/bin/env python3
"""
Unit tests for CREDENTIALS linter secretlint
This class has been automatically @generated by .automation/build.py, please do not update it manually
"""

from unittest import TestCase

from megalinter.tests.test_megalinter.LinterTestRoot import LinterTestRoot


class credentials_secretlint_test(TestCase, LinterTestRoot):
    descriptor_id = "CREDENTIALS"
    linter_name = "secretlint"
