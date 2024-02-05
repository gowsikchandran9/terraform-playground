import datetime


def handler(event, context):
    current_time = datetime.datetime.now()
    print(f"The current time is {current_time}")
    return {
        'statusCode': 200,
        'body': f"The current time is {current_time}"
    }
