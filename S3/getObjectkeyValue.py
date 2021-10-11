def getValue(object, key):
    if type(object) == dict:
        key2 = key.split('/', 1)
        object2 = object[key2[0]]
        if type(object2) == dict:
            object2 = getValue(object2, key2[1])
        return object2

object = input("Enter the object:")
key    = input("Enter the key:")
print("Value is:"+getValue(object,key))
