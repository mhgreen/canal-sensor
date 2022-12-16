renames = {
    'v': 'meters',
    }

def apply(metric):
    for k, v in metric.fields.items():
        if k in renames:
            metric.fields[renames[k]] = v
            distance = metric.fields.get('meters')
            metric.fields['meters'] = float(distance)
            metric.fields.pop(k)
    return metric
