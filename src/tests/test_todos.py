

random_usernames = [
    "culturalskeletonizer",
    "tanzaniancreeper",
    "sircomparator",
    "steeveexpert",
    "negativecomplain",
    "certainlychide",
    "fossildeadbeat",
    "barbarouscity",
    "grievingraincoat",
    "puddingmacadamia",
    "swankymull",
    "zealousdoves",
    "waterfowlhearty",
    "ersttanzanian",
    "surfaceharmonious",
    "thornmustard",
    "occupationtheorize",
    "amiablefraction",
    "callingheavy",
    "seasonwicket",
    "engagemiddle",
    "riptideericsson",
    "robegyptian",
    "tippedassertive",
    "grudgingaction",
    "surprisefinger",
    "yikeschile",
    "promotequartz",
    "baseballsowse",
    "reallyenough",
    "usurpart",
    "soakcarpal",
    "withsulphur",
    "featherdivulge",
    "healthycamp",
    "guessterror",
    "forelimbpakistani",
    "shyjewelry",
    "retortbreasts",
    "cormorantsneak",
    "cabbageextraneous",
    "briskimmigrate",
    "cancerglass",
    "apatheticforeign",
    "regardunruly",
    "bowlerchirp",
    "geckodarkness",
    "carpalsale",
    "draftencourage",
    "definitionforefinger",
    "unsurenuclear",
    "tactlessfizz",
    "colgatestrake",
    "violencedidactic",
    "existencestatuesque",
    "probablytalkative",
    "laveermotor",
    "tribeguineafowl",
    "cordialspecific",
    "preferencepedal",
    "purringignore",
    "talentedshould",
    "traininggrade",
    "collarbonefreethrow",
    "squeamishglutinous",
    "unkindnessbong",
    "palateerst",
    "kosheruntried",
    "tactfulinvite",
    "innocentsubsequent",
    "iceskatesadjoining",
    "alarmclimb",
    "canegiven",
    "closeiguana",
    "ajartrot",
    "weakmainsheet",
    "yoursboom",
    "pitifulsquare",
    "screenexcellent",
    "tadafilled",
    "wigeonchive",
    "heartpulsesimplistic",
    "groundedwelsh",
    "packagelazy",
    "hiccupcelebrate",
    "meantonight",
    "possesspublisher",
    "shrivelstrum",
    "dancetestimony",
    "twinklingmotivated",
    "beingcoal",
    "ultimatelifetime",
    "poisedfret",
    "futureobviously",
    "tackydebate",
    "martencamisole",
    "transitionhibiscus",
    "waveelope",
    "greenssleuth",
    "minibusethics",
    "heathmotion",
    "beatplantar",
    "sipexpansion",
    "estuarineutopian",
    "oatmealmissile",
    "mixtureuncommon",
    "surelyragged",
    "retinascaly",
    "importantoutcome",
    "dolphinpoodle",
    "golfingstrider",
    "officialgarden",
    "craftingmakeup",
    "sablewood",
    "competitorsnowboard",
    "reasonableunknown",
    "fieldonline",
    "whipstaffscull",
    "georgianvital",
    "curdsoon",
    "newspaperrecondite",
    "hoetend",
    "dependsolid",
    "skiingadvice",
    "rhinocerosprunes",
    "vicarcandid",
    "offensepuffy",
    "scutetenuous",
    "tacitcoarse",
    "untilcontest",
    "workerwhimsical",
    "dickblushing",
    "songbroadcast",
    "ponysunbonnet",
    "mouthspan",
    "referpatter",
    "greatertangerines",
    "talkativepillar",
    "mincefall",
    "barmanwhat",
    "poppedweird",
    "conduitangel",
    "assesscanon",
    "shortcakebeen",
    "aggressivecommand",
    "cherrieswacky",
    "gartersdick",
    "thriftydivvy",
    "mightcoil",
    "gapkale",
    "salttroubling",
    "nyehelpless",
    "kayakerocelot",
    "wigdraw",
    "dispiritedcobra",
    "depositcame",
    "consensusshoemaker",
    "volatilehalting",
    "leotardcook",
    "pestercentury",
    "etcfulfilled",
    "actuallydream",
    "burritoprecede",
    "truthjudge",
    "surebrain",
    "sledderguffaw",
    "growneasily",
    "moodricotta",
    "dangeroustrapped",
    "topicpenitent",
    "swooshwren",
    "blinkalso",
    "caperelaborate",
    "functionalbury",
    "lionextremely",
    "askcadge",
    "poofwhirlwind",
]

wrong_usernames = [
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
    "acceptablehandkerchief",
]

import os
import tempfile
import pytest
import json

# TODO add test mongo db
# and create a fixture to test some inputs
# from app import create_app

# from app.todos.validation import validate_username
# from app.todos.validation import validate_password


# @pytest.mark.parametrize("parameter, expected_result", [
# 	(username, { "passed": True, "error_message": None}) for username in random_usernames
# ])
# def test_correct_usernames(parameter, expected_result):
# 	assert validate_username(parameter) == expected_result

# @pytest.mark.parametrize("parameter, expected_result", [
# 	(username, { "passed": False, "error_message": "username must be between 6 and 20 characters"}) for username in wrong_usernames
# ])
# def test_wrong_usernames(parameter, expected_result):
# 	assert validate_username(parameter) == expected_result


# @pytest.mark.parametrize("parameter, expected_result", [
# 	("123!@#asdASD.", { "passed": True, "error_message": None})
# ])
# def test_correct_passwords(parameter, expected_result):
# 	assert validate_password(parameter) == expected_result

# @pytest.mark.parametrize("parameter, expected_result", [
# 	("asd", { "passed": False, "error_message": "password must be between 10 and 30 characters" })
# ])
# def test_wrong_passwords(parameter, expected_result):
# 	assert validate_password(parameter) == expected_result

# @pytest.fixture
# def client():
# 	db_fd, db_path = tempfile.mkstemp()
# 	app = create_app({'TESTING': True, 'DATABASE': db_path})

# 	with app.test_client() as client:
# 		# with app.app_context():
# 		#     init_db()
# 		yield client

# 	os.close(db_fd)
# 	os.unlink(db_path)


# def get_request(client, route):
# 	return client.get(route).data.decode("utf-8")

# def get_json_from_request(client, route):
# 	return json.loads(get_request(client, "/hello"))