import random

SUMMARY='Performs some random number generation'

def do_coin(tokens):
    coin = {0:'heads',1:'tails'}
    return '{}'.format(coin[random.randint(0,1)])

def do_int(tokens):
    return "I don't do random integers yet..."

def process_event(tokens, event):
    import random
    subcommands = ['coin', 'int']
    default='I only understand {} subcommands...'.format(subcommands)
    if len(tokens) == 0:
        return default
    if tokens[0] == 'coin':
        return do_coin(tokens[1:])
    if token[0] == 'int':
        return do_int(tokens[1:])
    return default

