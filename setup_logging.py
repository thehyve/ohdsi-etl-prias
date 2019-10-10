import logging.config
import time
from pathlib import Path

import yaml


def setup_logging(debug: bool):
    """
    Setup logging configuration
    :param debug: flag if debug messages should be displayed
    """
    log_dir = Path('./logs')
    log_dir.mkdir(exist_ok=True)
    time_string = time.strftime('%Y-%m-%dT%H%M%S')
    logfile = log_dir.joinpath(f'{time_string}.txt')

    default_level = logging.DEBUG if debug else logging.INFO
    config_path = Path('./logging.yaml')
    if config_path.exists():
        with open(config_path, 'rt') as f:
            config = yaml.safe_load(f.read())
        config['root']['level'] = default_level
        config['handlers']['file']['filename'] = logfile
        logging.config.dictConfig(config)
    else:
        logging.basicConfig(level=default_level)