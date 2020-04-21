import logging

logger = logging.getLogger(__name__)

SUMMARY="expand acronyms"



def process_event(tokens, event):
    '''
    '''
    if len(tokens) == 1:
        return "I don't know what `{}` is...".format(tokens[0])
    return "You're request doesn't match: acro <ACRONYM>"
