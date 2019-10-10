
def to_float(numeric_string):
    """Parses string to float with either dot or comma as decimal separator"""
    return float(numeric_string.replace(',', '.'))


def to_int(numeric_string):
    """Parses string to int. If number has decimals, the number is floored."""
    return int(to_float(numeric_string))
