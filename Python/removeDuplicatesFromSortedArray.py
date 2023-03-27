class Solution:
    def removeDuplicates(self, nums):
        temp_list, k= [], 0
        for i in range(len(nums)):
            if nums[i] not in temp_list:
                temp_list.append(nums[i])
        nums=temp_list
        return [len(nums), nums] 

s1= Solution()
print(s1.removeDuplicates([0,0,1,1,1,2,2,3,3,4]))