class Solution:
    def twoSum(self, nums, target):
        for i in range(len(nums)):
            diff=target-nums[i]
            if diff in nums[i+1:]:
                diff_index=nums[i+1:].index(diff)+i+1
                if i!=diff_index:
                    return [i,diff_index]
            
        
        
s1= Solution()
print(s1.twoSum([3,2,3],6))