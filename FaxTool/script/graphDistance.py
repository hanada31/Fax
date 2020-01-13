# -*- coding: utf-8 -*-
from collections import deque 
class optimal_path(object):
	def __init__(self,Graph):
		self.Graph = Graph
		self.edgeTo = {}
		self.depth = 0
		self.mark = []
		for i in range(len(self.Graph)):
			self.mark.append(0)
		self.path = self.mark[:]

	def dfs(self,start,end):
		if start == end:
			self.path[self.depth] = int(start)
			return True
		if self.visited[str(start)] == 1:
			return False
		else:
			self.visited[str(start)] = 1
			self.path[self.depth] = int(start)
			self.depth += 1
		for i in self.new_edgeTo[str(start)]:
			if self.dfs(i,end) == True :
				return True
		self.depth -= 1
		return False

	def bfs(self, start, end):  
		self.visited = {}
		d = deque()
		d.append(int(start))
		self.new_edgeTo = {}
		self.mark[int(start)] = 1	
		while d:
			person = d.popleft()
			for i in self.Graph[str(person)]:  
				if self.mark[i] == 0:		   
					self.mark[i] = 1			
					d.append(i)			   
					self.edgeTo[str(i)] = int(person)	  
				else:
					pass
		if start in self.edgeTo:
			del self.edgeTo[start]		 
#		print('edgeTo=', self.edgeTo)
		for i in range(len(self.Graph)): 
			self.new_edgeTo[str(i)] = []
			self.visited[str(i)] = 0	   

		for k, v in self.edgeTo.items():		
			self.new_edgeTo[str(v)].append(int(k))
#		print('new_edgTo=', self.new_edgeTo)
		self.dfs(start,end)					 
		self.path = self.path[:self.depth+1]
#		print(self.path[:self.depth+1])		 
		#print(self.path)
		if len(self.path[:self.depth + 1]) == 0:
			#print("no path")
			pass
		else:
			s="path:"
			for i in self.path[:self.depth]:
				s =s + str(i)+'-->'
			trace = s +str(self.path[self.depth])
			return len(self.path)-1